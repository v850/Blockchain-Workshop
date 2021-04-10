pragma solidity 0.5.3;

contract ErrorHandlingExample{
    
    function transferAmount(address payable recipientAccount, uint amount)
    public 
    payable {
        recipientAccount.transfer(amount);
    }
    
    function getBalance(address account) public view returns(uint) {
        return account.balance;
    }
    
    function modifiedTransferAmount(address payable accountAddr)
    public payable returns (uint) {
        uint avlBalance = msg.sender.balance;
        require(msg.value <= avlBalance, "Insufficient Balance");
        uint oldBalance = accountAddr.balance;
        accountAddr.transfer(msg.value);
        uint currBalance = msg.sender.balance;
        assert(accountAddr.balance == oldBalance + msg.value);
        assert(currBalance == avlBalance - msg.value);
        return accountAddr.balance;
    }
}