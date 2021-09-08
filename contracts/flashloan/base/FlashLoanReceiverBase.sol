// SPDX-License-Identifier: agpl-3.0
pragma solidity 0.8.6;

import {IFlashLoanReceiver} from '../interfaces/IFlashLoanReceiver.sol';
import {IPoolAddressesProvider} from '../../interfaces/IPoolAddressesProvider.sol';
import {IPool} from '../../interfaces/IPool.sol';

/**
* @title FlashLoanReceiverBase
* @notice Base contract to develop flashloan-receiver contracts
* @author Aave
 */
abstract contract FlashLoanReceiverBase is IFlashLoanReceiver {

  IPoolAddressesProvider public immutable override ADDRESSES_PROVIDER;
  IPool public immutable override POOL;

  constructor(IPoolAddressesProvider provider) {
    ADDRESSES_PROVIDER = provider;
    POOL = IPool(provider.getPool());
  }
}
