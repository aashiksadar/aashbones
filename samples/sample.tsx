import { useState, useEffect } from 'react'
import { QueryClient, QueryClientProvider } from '@tanstack/react-query'

interface User {
  id: number
  name: string
  email: string
  role: 'admin' | 'user' | 'viewer'
}

const API_URL = 'https://api.example.com'

async function fetchUsers(): Promise<User[]> {
  const response = await fetch(`${API_URL}/users`)
  if (!response.ok) {
    throw new Error('Failed to fetch users')
  }
  return response.json()
}

export default function UserList() {
  const [users, setUsers] = useState<User[]>([])
  const [loading, setLoading] = useState(true)

  useEffect(() => {
    fetchUsers()
      .then(data => setUsers(data))
      .catch(err => console.error(err))
      .finally(() => setLoading(false))
  }, [])

  if (loading) return <div className="spinner">Loading...</div>

  return (
    <div className="user-list">
      <h1>Users ({users.length})</h1>
      <ul>
        {users.map(user => (
          <li key={user.id}>
            <span className="name">{user.name}</span>
            <span className="role">{user.role}</span>
          </li>
        ))}
      </ul>
    </div>
  )
}
