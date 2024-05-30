#!/bin/bash

# Create the main project directory
mkdir -p trading_system

# Create core directory and files
mkdir -p trading_system/core
touch trading_system/core/data_ingestion.py
touch trading_system/core/event_hooks.py
touch trading_system/core/preferences.py
touch trading_system/core/strategy.py
touch trading_system/core/__init__.py

# Create data directory and subdirectories/files
mkdir -p trading_system/data/historical
touch trading_system/data/historical/historical_data.csv
mkdir -p trading_system/data/realtime
touch trading_system/data/realtime/realtime_data.py
mkdir -p trading_system/data/preferences
touch trading_system/data/preferences/trader123_preferences.json

# Create strategies directory and files
mkdir -p trading_system/strategies
touch trading_system/strategies/mean_reversion_strategy.py
touch trading_system/strategies/__init__.py

# Create tests directory and files
mkdir -p trading_system/tests
touch trading_system/tests/test_data_ingestion.py
touch trading_system/tests/test_event_hooks.py
touch trading_system/tests/test_strategy_module.py
touch trading_system/tests/test_backtesting.py
touch trading_system/tests/test_real_time_trading.py
touch trading_system/tests/test_user_preferences.py
touch trading_system/tests/__init__.py

# Create main project files
touch trading_system/main.py
touch trading_system/backtest.py
touch trading_system/real_time_trading.py
touch trading_system/requirements.txt

# Output a message indicating the structure has been created
echo "Project structure has been created successfully."
