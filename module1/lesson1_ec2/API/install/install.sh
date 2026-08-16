#!/bin/bash

set -e

echo "======================================"
echo " BALERICA LEGACY BANK INSTALLER"
echo "======================================"

echo "[1/8] Updating packages..."
sudo dnf update -y

echo "[2/8] Installing dependencies..."
sudo dnf install -y \
    python3 \
    python3-pip \
    sqlite \
    gcc \
    make \
    gnucobol

echo "[3/8] Creating directories..."
sudo mkdir -p /opt/balerica-bank/{app,cobol/bin,data,logs,agents}

sudo chown -R $USER:$USER /opt/balerica-bank

cd /opt/balerica-bank

echo "[4/8] Creating Python virtual environment..."
python3 -m venv venv
source venv/bin/activate

echo "[5/8] Installing Python packages..."
pip install \
    fastapi \
    uvicorn \
    boto3 \
    python-dotenv

echo "[6/8] Creating database..."

sqlite3 data/bank.db <<'SQL'

CREATE TABLE IF NOT EXISTS accounts (
    account_id TEXT PRIMARY KEY,
    customer_name TEXT NOT NULL,
    status TEXT NOT NULL,
    balance REAL NOT NULL,
    currency TEXT NOT NULL
);

CREATE TABLE IF NOT EXISTS transactions (
    transaction_id TEXT PRIMARY KEY,
    account_id TEXT NOT NULL,
    amount REAL NOT NULL,
    currency TEXT NOT NULL,
    status TEXT NOT NULL,
    reference TEXT,
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP
);

INSERT OR IGNORE INTO accounts
VALUES
(
    '100001',
    'Alice Johnson',
    'ACTIVE',
    5000.00,
    'USD'
);

INSERT OR IGNORE INTO accounts
VALUES
(
    '100002',
    'Robert Smith',
    'ACTIVE',
    2750.00,
    'USD'
);

INSERT OR IGNORE INTO accounts
VALUES
(
    '100003',
    'Maria Garcia',
    'ACTIVE',
    8100.00,
    'USD'
);

SQL

echo "[7/8] Compiling COBOL programs..."

cobc -x \
    -o cobol/bin/account_lookup \
    cobol/account_lookup.cob

cobc -x \
    -o cobol/bin/payment_post \
    cobol/payment_post.cob

echo "[8/8] Installation complete."

echo
echo "Next step:"
echo
echo "cd /opt/balerica-bank"
echo "./cobol/bin/account_lookup 100001"
echo
