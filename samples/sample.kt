package com.example.api

import kotlinx.coroutines.delay
import kotlinx.coroutines.flow.Flow
import kotlinx.coroutines.flow.flow

data class User(
    val id: Long,
    val name: String,
    val email: String,
    val active: Boolean = true
)

interface UserRepository {
    suspend fun findById(id: Long): User?
    suspend fun findAll(): List<User>
    suspend fun save(user: User): User
    suspend fun delete(id: Long)
}

class UserService(private val repository: UserRepository) {

    suspend fun getUser(id: Long): User {
        return repository.findById(id)
            ?: throw NoSuchElementException("User $id not found")
    }

    fun observeUsers(): Flow<List<User>> = flow {
        while (true) {
            val users = repository.findAll()
            emit(users.filter { it.active })
            delay(5000)
        }
    }

    suspend fun deactivateUser(id: Long): User {
        val user = getUser(id)
        val updated = user.copy(active = false)
        return repository.save(updated)
    }
}
