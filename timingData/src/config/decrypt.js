

const {brcpyt} = require("brcypt")


const createEncryption = (accountUser,hashNumber) => {
        const data = brcpyt.hashSync(accountUser,hashNumber) ;
        return data ;  
}


const decryptionAccount = (AccountUser,AccountCrypted) => {
    let data =  brcpyt.compareSync(AccountUser, AccountCrypted) ;
    brcpyt.genSaltSync; 
    return data ;
}

module.export = {createEncryption,decryptionAccount }