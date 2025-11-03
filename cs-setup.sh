#!bin/bash

BOLD_GREEN='\033[1;32m'

# Print first box banner in full red
printf "%b" "$RED"
cat <<'EOF'
                          _____                          
                   _.+sd$$$$$$$$$bs+._                   
               .+d$$$$$$$$$$$$$$$$$$$$$b+.               
            .sd$$$$$$$P^*^T$$$P^*"*^T$$$$$bs.            
          .s$$$$$$$$P*     `*' _._  `T$$$$$$$s.          
        .s$$$$$$$$$P          ` :$;   T$$$$$$$$s.        
       s$$$$$$$$$$;  db..+s.   `**'    T$$$$$$$$$s       
     .$$$$$$$$$$$$'  `T$P*'             T$$$$$$$$$$.     
    .$$$$$$$$$$$$P                       T$$$$$$$$$$.    
   .$$$$$$$$$$$$$b                       `$$$$$$$$$$$.   
  :$$$$$$$$$$$$$$$.                       T$$$$$$$$$$$;  
  $$$$$$$$$P^*' :$$b.                     d$$$$$$$$$$$$  
 :$$$$$$$P'      T$$$$bs._               :P'`*^T$$$$$$$; 
 $$$$$$$P         `*T$$$$$b              '      `T$$$$$$ 
:$$$$$$$b            `*T$$$s                      :$$$$$;
:$$$$$$$$b.                                        $$$$$;
$$$$$$$$$$$b.                                     :$$$$$$
$$$$$$$$$$$$$bs.                                 .$$$$$$$
$$$$$$$$$$$$$$$$$bs.                           .d$$$$$$$$
:$$$$$$$$$$$$$P*"*T$$bs,._                  .sd$$$$$$$$$;
:$$$$$$$$$$$$P     TP^**T$bss++.._____..++sd$$$$$$$$$$$$;
 $$$$$$$$$$$$b           `T$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 
 :$$$$$$$$$$$$b.           `*T$$P^*"*"*^^*T$$$$$$$$$$$$; 
  $$$b       `T$b+                        :$$$$$$$BUG$$  
  :$P'         `"'               ,._.     ;$$$$$$$$$$$;  
   \                            `*TP*     d$$P*******$   
    \                                    :$$P'      /    
     \                                  :dP'       /     
      `.                               d$P       .'      
        `.                             `'      .'        
          `-.                               .-'          
             `-.                         .-'             
                `*+-._             _.-+*'                
                      `"*-------*"'
EOF

sudo apt update

#!/bin/bash
# Security Tools Installation Script with Error Checking
# For Debian/Ubuntu-based systems (Kali Linux recommended)

echo "Starting security tools installation..."
echo "This will check package availability and install valid packages."

# Update package lists first
echo "[*] Updating package lists..."
sudo apt update

# Function to attempt installation with error handling
install_package() {
    local package=$1
    echo "[*] Attempting to install: $package"
    if sudo apt install -y "$package" 2>/dev/null; then
        echo "[✓] Successfully installed: $package"
    else
        echo "[✗] Failed to install: $package"
        echo "    Run 'apt-cache search $package' to find alternatives"
    fi
}

# Network Scanning & Reconnaissance
echo -e "\n=== Network Scanning & Reconnaissance ==="
install_package masscan
install_package dnsrecon
install_package dnsenum
install_package sublist3r
install_package amass
install_package recon-ng
install_package maltego

# Vulnerability Scanners
echo -e "\n=== Vulnerability Scanners ==="
install_package openvas
install_package lynis
install_package skipfish

# Web Application Testing
echo -e "\n=== Web Application Testing ==="
install_package dirb
install_package wpscan
install_package joomscan
install_package commix
install_package wfuzz

# Exploitation Tools
echo -e "\n=== Exploitation Tools ==="
install_package exploitdb  # searchsploit is part of exploitdb
install_package beef-xss
install_package set  # Social Engineering Toolkit

# Password Attacks
echo -e "\n=== Password Attacks ==="
install_package crunch
install_package john  # John the Ripper
install_package hashcat
install_package cewl

# Wireless Tools
echo -e "\n=== Wireless Tools ==="
install_package kismet
install_package wifite
install_package reaver
install_package bully

# Sniffing & Spoofing
echo -e "\n=== Sniffing & Spoofing ==="
install_package ettercap-graphical
install_package dsniff
install_package driftnet

# Forensic Tools
echo -e "\n=== Forensic Tools ==="
install_package binwalk
install_package foremost
install_package scalpel
install_package volatility3  # Note: volatility3, not volatility

# Social Engineering
echo -e "\n=== Social Engineering ==="
# gophish needs to be installed manually
echo "[!] gophish requires manual installation from: https://github.com/gophish/gophish"

# Post-Exploitation
echo -e "\n=== Post-Exploitation ==="
# PowerSploit and Mimikatz are Windows tools, typically used from Git repos
echo "[!] powersploit: git clone https://github.com/PowerShellMafia/PowerSploit.git"
echo "[!] mimikatz: Download from https://github.com/gentilkiwi/mimikatz"

# Network Analysis
echo -e "\n=== Network Analysis ==="
install_package tcpdump
install_package tshark

# Reverse Engineering
echo -e "\n=== Reverse Engineering ==="
install_package radare2
install_package binutils

# OSINT Tools
echo -e "\n=== OSINT Tools ==="
# Sherlock and Photon typically installed via pip
echo "[!] sherlock: pip3 install sherlock-project"
echo "[!] photon: git clone https://github.com/s0md3v/Photon.git"

# Additional Utilities
echo -e "\n=== Additional Utilities ==="
install_package netcat-traditional  # or ncat
install_package socat
install_package proxychains4
install_package tor
install_package sshuttle

# Programming Languages & Runtimes
echo -e "\n=== Programming Languages & Runtimes ==="
install_package ruby
install_package perl
install_package nodejs
install_package npm
install_package golang-go  # golang package is golang-go

# Container & Virtualization Tools
echo -e "\n=== Container & Virtualization Tools ==="
install_package docker.io
install_package vagrant
install_package virtualbox
install_package gradle
install_package apktool
install_package default-jdk  # For Java

echo -e "\n=== Installation Complete ==="
echo "Review the output above for any failed installations."
echo "Some tools require manual installation or pip3."

# Optional: Run apt-cache search for problematic packages
# Advanced Network Tools
echo -e "\n=== Advanced Network Tools ==="
install_package hping3
install_package arping
install_package ncat
install_package nbtscan
install_package onesixtyone
install_package snmp
install_package snmp-mibs-downloader
install_package smbclient
install_package enum4linux
install_package nbtscan-unixwiz
install_package ike-scan
install_package unicornscan

# DNS & Domain Tools
echo -e "\n=== DNS & Domain Tools ==="
install_package fierce
install_package dnsmap
install_package dnsmasq
install_package dnstracer
install_package host
install_package whois
install_package theharvester

# SSL/TLS Testing
echo -e "\n=== SSL/TLS Testing ==="
install_package sslscan
install_package sslyze
install_package testssl.sh
echo "[!] ssllabs-scan: Download from https://github.com/ssllabs/ssllabs-scan"

# Web Proxies & Interceptors
echo -e "\n=== Web Proxies & Interceptors ==="
install_package burpsuite
install_package zaproxy
install_package mitmproxy
install_package squid
install_package privoxy

# Fuzzing Tools
echo -e "\n=== Fuzzing Tools ==="
install_package afl++
install_package radamsa
install_package zzuf
install_package spike
echo "[!] boofuzz: pip3 install boofuzz"
echo "[!] ffuf: go install github.com/ffuf/ffuf@latest"

# Database Assessment
echo -e "\n=== Database Assessment ==="
install_package sqlmap
install_package sqlite3
install_package postgresql-client
install_package mysql-client
install_package redis-tools
install_package mongodb-clients

# API Testing
echo -e "\n=== API Testing ==="
install_package curl
install_package wget
install_package httpie
install_package jq
echo "[!] postman: Download from https://www.postman.com/downloads/"
echo "[!] arjun: pip3 install arjun"

# Mobile Security
echo -e "\n=== Mobile Security ==="
install_package apktool
install_package dex2jar
install_package jadx
install_package androguard
echo "[!] frida: pip3 install frida frida-tools"
echo "[!] objection: pip3 install objection"
echo "[!] mobsf: git clone https://github.com/MobSF/Mobile-Security-Framework-MobSF.git"

# Cloud Security Tools
echo -e "\n=== Cloud Security Tools ==="
install_package awscli
install_package azure-cli
echo "[!] scout-suite: pip3 install scoutsuite"
echo "[!] cloudsploit: git clone https://github.com/aquasecurity/cloudsploit.git"
echo "[!] prowler: pip3 install prowler"
echo "[!] pacu: git clone https://github.com/RhinoSecurityLabs/pacu.git"

# Container Security
echo -e "\n=== Container Security ==="
install_package docker-compose
install_package podman
echo "[!] trivy: Install from https://aquasecurity.github.io/trivy/"
echo "[!] grype: curl -sSfL https://raw.githubusercontent.com/anchore/grype/main/install.sh | sh"
echo "[!] dive: Download from https://github.com/wagoodman/dive"

# Credential Dumping & Analysis
echo -e "\n=== Credential Dumping & Analysis ==="
install_package samdump2
install_package pwdump
install_package fcrackzip
install_package pdfcrack
install_package rarcrack
install_package ophcrack
install_package chntpw

# Traffic Analysis & Capture
echo -e "\n=== Traffic Analysis & Capture ==="
install_package wireshark
install_package termshark
install_package bettercap
install_package responder
install_package impacket-scripts
install_package yersinia

# Steganography & Crypto
echo -e "\n=== Steganography & Crypto ==="
install_package steghide
install_package stegosuite
install_package outguess
install_package exiftool
install_package hashdeep
install_package ssdeep
install_package openssl

# Reporting & Documentation
echo -e "\n=== Reporting & Documentation ==="
install_package cherrytree
install_package keepnote
install_package pipal
install_package cutycapt
install_package recordmydesktop
install_package asciinema

# Framework & Automation
echo -e "\n=== Frameworks & Automation ==="
install_package metasploit-framework
install_package armitage
install_package routersploit
install_package nuclei
echo "[!] empire: git clone https://github.com/BC-SECURITY/Empire.git"
echo "[!] covenant: git clone https://github.com/cobbr/Covenant.git"
echo "[!] sliver: Download from https://github.com/BishopFox/sliver"
echo "[!] cobalt-strike: Commercial tool - https://www.cobaltstrike.com"

# Binary Analysis & Debugging
echo -e "\n=== Binary Analysis & Debugging ==="
install_package gdb
install_package gdb-multiarch
install_package lldb
install_package ltrace
install_package strace
install_package valgrind
install_package ghidra
install_package rizin
install_package cutter
echo "[!] pwntools: pip3 install pwntools"
echo "[!] ropper: pip3 install ropper"
echo "[!] angr: pip3 install angr"

# Active Directory Tools
echo -e "\n=== Active Directory Tools ==="
install_package bloodhound
install_package neo4j
install_package crackmapexec
install_package ldapdomaindump
echo "[!] sharphound: Download from https://github.com/BloodHoundAD/SharpHound"
echo "[!] kerbrute: go install github.com/ropnop/kerbrute@latest"
echo "[!] rubeus: Download from https://github.com/GhostPack/Rubeus"

# Evasion & Obfuscation
echo -e "\n=== Evasion & Obfuscation ==="
install_package veil
install_package shellter
install_package unicorn
echo "[!] invoke-obfuscation: git clone https://github.com/danielbohannon/Invoke-Obfuscation.git"
echo "[!] donut: git clone https://github.com/TheWover/donut.git"

# IoT & Hardware Hacking
echo -e "\n=== IoT & Hardware Hacking ==="
install_package minicom
install_package screen
install_package picocom
install_package arduino
install_package platformio
echo "[!] firmwalker: git clone https://github.com/craigz28/firmwalker.git"
echo "[!] firmware-mod-kit: git clone https://github.com/rampageX/firmware-mod-kit.git"

# Threat Intelligence
echo -e "\n=== Threat Intelligence ==="
install_package spiderfoot
install_package shodan
echo "[!] theHarvester: Already included above"
echo "[!] metagoofil: git clone https://github.com/laramies/metagoofil.git"
echo "[!] recon-cli: pip3 install recon-cli"

# Log Analysis
echo -e "\n=== Log Analysis ==="
install_package logwatch
install_package fail2ban
install_package rsyslog
install_package auditd
install_package aide

# VPN & Tunneling
echo -e "\n=== VPN & Tunneling ==="
install_package openvpn
install_package wireguard
install_package chisel
install_package iodine
install_package dns2tcp
install_package ptunnel

# Python Security Libraries
echo -e "\n=== Python Security Libraries ==="
echo "[!] Installing Python security tools via pip3..."
echo "    pip3 install scapy"
echo "    pip3 install requests"
echo "    pip3 install beautifulsoup4"
echo "    pip3 install pycryptodome"
echo "    pip3 install paramiko"
echo "    pip3 install impacket"
echo "    pip3 install ldap3"
echo "    pip3 install pyOpenSSL"
echo "    pip3 install dnspython"

# Git Repositories (Manual Clone)
echo -e "\n=== Recommended Git Repositories ==="
echo "[!] SecLists: git clone https://github.com/danielmiessler/SecLists.git"
echo "[!] PayloadsAllTheThings: git clone https://github.com/swisskyrepo/PayloadsAllTheThings.git"
echo "[!] AutoRecon: pip3 install autorecon"
echo "[!] LinPEAS/WinPEAS: git clone https://github.com/carlospolop/PEASS-ng.git"
echo "[!] LinEnum: git clone https://github.com/rebootuser/LinEnum.git"
echo "[!] pspy: Download from https://github.com/DominicBreuker/pspy"
echo "[!] GTFOBins: https://gtfobins.github.io/"

echo -e "\n[*] To search for alternative package names, use:"
echo "    apt-cache search <package-name>"

printf "%b" "$BOLD_GREEN"
cat <<'EOF'
                          _____                          
                   _.+sd$$$$$$$$$bs+._                   
               .+d$$$$$$$$$$$$$$$$$$$$$b+.               
            .sd$$$$$$$P^*^T$$$P^*"*^T$$$$$bs.            
          .s$$$$$$$$P*     `*' _._  `T$$$$$$$s.          
        .s$$$$$$$$$P          ` :$;   T$$$$$$$$s.        
       s$$$$$$$$$$;  db..+s.   `**'    T$$$$$$$$$s       
     .$$$$$$$$$$$$'  `T$P*'             T$$$$$$$$$$.     
    .$$$$$$$$$$$$P                       T$$$$$$$$$$.    
   .$$$$$$$$$$$$$b                       `$$$$$$$$$$$.   
  :$$$$$$$$$$$$$$$.                       T$$$$$$$$$$$;  
  $$$$$$$$$P^*' :$$b.                     d$$$$$$$$$$$$  
 :$$$$$$$P'      T$$$$bs._               :P'`*^T$$$$$$$; 
 $$$$$$$P         `*T$$$$$b              '      `T$$$$$$ 
:$$$$$$$b            `*T$$$s                      :$$$$$;
:$$$$$$$$b.                                        $$$$$;
$$$$$$$$$$$b.                                     :$$$$$$
$$$$$$$$$$$$$bs.                                 .$$$$$$$
$$$$$$$$$$$$$$$$$bs.                           .d$$$$$$$$
:$$$$$$$$$$$$$P*"*T$$bs,._                  .sd$$$$$$$$$;
:$$$$$$$$$$$$P     TP^**T$bss++.._____..++sd$$$$$$$$$$$$;
 $$$$$$$$$$$$b           `T$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 
 :$$$$$$$$$$$$b.           `*T$$P^*"*"*^^*T$$$$$$$$$$$$; 
  $$$b       `T$b+                        :$$$$$$$BUG$$  
  :$P'         `"'               ,._.     ;$$$$$$$$$$$;  
   \                            `*TP*     d$$P*******$   
    \                                    :$$P'      /    
     \                                  :dP'       /     
      `.                               d$P       .'      
        `.                             `'      .'        
          `-.                               .-'          
             `-.                         .-'             
                `*+-._             _.-+*'                
                      `"*-------*"'
                      
                 CS-BUILD SETUP COMPLETE!
EOF
