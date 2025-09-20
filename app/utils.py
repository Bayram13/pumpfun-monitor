# app/utils.py
import os
from web3 import Web3

def checksum(addr: str):
    try:
        return Web3.toChecksumAddress(addr)
    except Exception:
        return addr

def load_env():
    from dotenv import load_dotenv
    load_dotenv()
