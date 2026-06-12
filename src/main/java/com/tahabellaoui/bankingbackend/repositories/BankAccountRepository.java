package com.tahabellaoui.bankingbackend.repositories;

import com.tahabellaoui.bankingbackend.entities.BankAccount;
import org.springframework.data.jpa.repository.JpaRepository;

public interface BankAccountRepository extends JpaRepository<BankAccount, String> {
}