pragma solidity 0.5.3;

contract TransferAmountExample{
    
    function transferAmount(address payable recipientAccount, uint amount)
    public 
    payable 
    {
        recipientAccount.transfer(amount);
    }
    
    function getBalance(address account) public view returns(uint) {
        return account.balance;
    }
}