package main

import (
	"context"
	"fmt"
	"net/http"
	"time"
)

// Server handles HTTP requests with timeout and graceful shutdown.
type Server struct {
	Port    int
	Timeout time.Duration
	handler http.Handler
}

const defaultTimeout = 30 * time.Second

func NewServer(port int, handler http.Handler) *Server {
	return &Server{
		Port:    port,
		Timeout: defaultTimeout,
		handler: handler,
	}
}

func (s *Server) Start(ctx context.Context) error {
	addr := fmt.Sprintf(":%d", s.Port)
	srv := &http.Server{
		Addr:         addr,
		Handler:      s.handler,
		ReadTimeout:  s.Timeout,
		WriteTimeout: s.Timeout,
	}

	go func() {
		<-ctx.Done()
		_ = srv.Shutdown(context.Background())
	}()

	if err := srv.ListenAndServe(); err != nil && err != http.ErrServerClosed {
		return fmt.Errorf("server failed: %w", err)
	}
	return nil
}
