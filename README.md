# Swift5 API client for OpenAPIClient

No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

## Overview
This API client was generated by the [OpenAPI Generator](https://openapi-generator.tech) project.  By using the [openapi-spec](https://github.com/OAI/OpenAPI-Specification) from a remote server, you can easily generate an API client.

- API version: 1.0.0
- Package version: 
- Build package: org.openapitools.codegen.languages.Swift5ClientCodegen

## Installation

### Carthage

Run `carthage update`

### CocoaPods

Run `pod install`

## Documentation for API Endpoints

All URIs are relative to *https://vault-api.usemoon.ai*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*AaveAPI* | [**borrow**](docs/AaveAPI.md#borrow) | **POST** /aave/{name}/borrow | 
*AaveAPI* | [**lend**](docs/AaveAPI.md#lend) | **POST** /aave/{name}/lend | 
*AaveAPI* | [**repay**](docs/AaveAPI.md#repay) | **POST** /aave/{name}/repay | 
*AaveAPI* | [**userReserveData**](docs/AaveAPI.md#userreservedata) | **POST** /aave/{name}/user-reserve-data | 
*AccountsAPI* | [**broadcastTx**](docs/AccountsAPI.md#broadcasttx) | **POST** /accounts/{accountName}/broadcast-tx | 
*AccountsAPI* | [**createAccount**](docs/AccountsAPI.md#createaccount) | **POST** /accounts | 
*AccountsAPI* | [**deleteAccount**](docs/AccountsAPI.md#deleteaccount) | **DELETE** /accounts/{accountName} | 
*AccountsAPI* | [**deployContract**](docs/AccountsAPI.md#deploycontract) | **POST** /accounts/{accountName}/deploy | 
*AccountsAPI* | [**getAccount**](docs/AccountsAPI.md#getaccount) | **GET** /accounts/{accountName} | 
*AccountsAPI* | [**getBalance**](docs/AccountsAPI.md#getbalance) | **GET** /accounts/{accountName}/balance | 
*AccountsAPI* | [**getNonce**](docs/AccountsAPI.md#getnonce) | **GET** /accounts/{accountName}/nonce | 
*AccountsAPI* | [**listAccounts**](docs/AccountsAPI.md#listaccounts) | **GET** /accounts | 
*AccountsAPI* | [**signMessage**](docs/AccountsAPI.md#signmessage) | **POST** /accounts/{accountName}/sign-message | 
*AccountsAPI* | [**signTransaction**](docs/AccountsAPI.md#signtransaction) | **POST** /accounts/{accountName}/sign-transaction | 
*AccountsAPI* | [**signTypedData**](docs/AccountsAPI.md#signtypeddata) | **POST** /accounts/{accountName}/sign-typed-data | 
*AccountsAPI* | [**transferEth**](docs/AccountsAPI.md#transfereth) | **POST** /accounts/{accountName}/transfer-eth | 
*BitcoinAPI* | [**createBitcoinAccount**](docs/BitcoinAPI.md#createbitcoinaccount) | **POST** /bitcoin | 
*BitcoinAPI* | [**getBitcoinAccount**](docs/BitcoinAPI.md#getbitcoinaccount) | **GET** /bitcoin/{accountName} | 
*BitcoinAPI* | [**listBitcoinAccounts**](docs/BitcoinAPI.md#listbitcoinaccounts) | **GET** /bitcoin | 
*BitcoinAPI* | [**signBitcoinTransaction**](docs/BitcoinAPI.md#signbitcointransaction) | **POST** /bitcoin/{accountName}/sign-tx | 
*BitcoincashAPI* | [**createBitcoinCashAccount**](docs/BitcoincashAPI.md#createbitcoincashaccount) | **POST** /bitcoincash | 
*BitcoincashAPI* | [**getBitcoinCashAccount**](docs/BitcoincashAPI.md#getbitcoincashaccount) | **GET** /bitcoincash/{accountName} | 
*BitcoincashAPI* | [**listBitcoinCashAccounts**](docs/BitcoincashAPI.md#listbitcoincashaccounts) | **GET** /bitcoincash | 
*BitcoincashAPI* | [**signBitcoinCashTransaction**](docs/BitcoincashAPI.md#signbitcoincashtransaction) | **POST** /bitcoincash/{accountName}/sign-tx | 
*ConveyorFinanceAPI* | [**swap**](docs/ConveyorFinanceAPI.md#swap) | **POST** /conveyorfinance/{name}/swap | 
*CosmosAPI* | [**createCosmosAccount**](docs/CosmosAPI.md#createcosmosaccount) | **POST** /cosmos | 
*CosmosAPI* | [**getCosmosAccount**](docs/CosmosAPI.md#getcosmosaccount) | **GET** /cosmos/{accountName} | 
*CosmosAPI* | [**listCosmosAccounts**](docs/CosmosAPI.md#listcosmosaccounts) | **GET** /cosmos | 
*CosmosAPI* | [**signCosmosTransaction**](docs/CosmosAPI.md#signcosmostransaction) | **POST** /cosmos/{accountName}/sign-tx | 
*DefaultAPI* | [**getMessage**](docs/DefaultAPI.md#getmessage) | **GET** /ping | 
*DogeCoinAPI* | [**createDogeCoinAccount**](docs/DogeCoinAPI.md#createdogecoinaccount) | **POST** /dogecoin | 
*DogeCoinAPI* | [**getDogeCoinAccount**](docs/DogeCoinAPI.md#getdogecoinaccount) | **GET** /dogecoin/{accountName} | 
*DogeCoinAPI* | [**listDogeCoinAccounts**](docs/DogeCoinAPI.md#listdogecoinaccounts) | **GET** /dogecoin | 
*DogeCoinAPI* | [**signDogeCoinTransaction**](docs/DogeCoinAPI.md#signdogecointransaction) | **POST** /dogecoin/{accountName}/sign-tx | 
*ENSAPI* | [**resolve**](docs/ENSAPI.md#resolve) | **POST** /ens/resolve | 
*ERC1155API* | [**balanceOf**](docs/ERC1155API.md#balanceof) | **POST** /erc1155/{name}/balance-of | 
*ERC1155API* | [**balanceOfBatch**](docs/ERC1155API.md#balanceofbatch) | **POST** /erc1155/{name}/balance-of-batch | 
*ERC1155API* | [**isApprovedForAll**](docs/ERC1155API.md#isapprovedforall) | **POST** /erc1155/{name}/is-approved-for-all | 
*ERC1155API* | [**safeBatchTransferFrom**](docs/ERC1155API.md#safebatchtransferfrom) | **POST** /erc1155/{name}/safe-batch-transfer-from | 
*ERC1155API* | [**safeTransferFrom**](docs/ERC1155API.md#safetransferfrom) | **POST** /erc1155/{name}/safe-transfer-from | 
*ERC1155API* | [**setApprovalForAll**](docs/ERC1155API.md#setapprovalforall) | **POST** /erc1155/{name}/set-approval-for-all | 
*EosAPI* | [**createEosAccount**](docs/EosAPI.md#createeosaccount) | **POST** /eos | 
*EosAPI* | [**getEosAccount**](docs/EosAPI.md#geteosaccount) | **GET** /eos/{accountName} | 
*EosAPI* | [**listEosAccounts**](docs/EosAPI.md#listeosaccounts) | **GET** /eos | 
*EosAPI* | [**signEosTransaction**](docs/EosAPI.md#signeostransaction) | **POST** /eos/{accountName}/sign-tx | 
*Erc20API* | [**allowanceErc20**](docs/Erc20API.md#allowanceerc20) | **POST** /erc20/{name}/allowance | 
*Erc20API* | [**approveErc20**](docs/Erc20API.md#approveerc20) | **POST** /erc20/{name}/approve | 
*Erc20API* | [**balanceOfErc20**](docs/Erc20API.md#balanceoferc20) | **POST** /erc20/{name}/balance-of | 
*Erc20API* | [**decimalsErc20**](docs/Erc20API.md#decimalserc20) | **POST** /erc20/{name}/decimals | 
*Erc20API* | [**nameErc20**](docs/Erc20API.md#nameerc20) | **POST** /erc20/{name}/name | 
*Erc20API* | [**symbolErc20**](docs/Erc20API.md#symbolerc20) | **POST** /erc20/{name}/symbol | 
*Erc20API* | [**totalSupplyErc20**](docs/Erc20API.md#totalsupplyerc20) | **POST** /erc20/{name}/total-supply | 
*Erc20API* | [**transferErc20**](docs/Erc20API.md#transfererc20) | **POST** /erc20/{name}/transfer | 
*Erc20API* | [**transferFromErc20**](docs/Erc20API.md#transferfromerc20) | **POST** /erc20/{name}/transfer-from | 
*Erc4337API* | [**getAddress**](docs/Erc4337API.md#getaddress) | **POST** /erc4337/{accountName}/address | 
*Erc4337API* | [**signBroadcastUserOpTx**](docs/Erc4337API.md#signbroadcastuseroptx) | **POST** /erc4337/{accountName}/sign-broadcast-userop-tx | 
*Erc721API* | [**approve**](docs/Erc721API.md#approve) | **POST** /erc721/{name}/approve | 
*Erc721API* | [**balanceOf**](docs/Erc721API.md#balanceof) | **POST** /erc721/{name}/balance-of | 
*Erc721API* | [**getApproved**](docs/Erc721API.md#getapproved) | **POST** /erc721/{name}/get-approved | 
*Erc721API* | [**isApprovedForAll**](docs/Erc721API.md#isapprovedforall) | **POST** /erc721/{name}/is-approved-for-all | 
*Erc721API* | [**name**](docs/Erc721API.md#name) | **POST** /erc721/{name}/name | 
*Erc721API* | [**ownerOf**](docs/Erc721API.md#ownerof) | **POST** /erc721/{name}/owner-of | 
*Erc721API* | [**safeTransferFrom**](docs/Erc721API.md#safetransferfrom) | **POST** /erc721/{name}/safe-transfer-from | 
*Erc721API* | [**setApprovalForAll**](docs/Erc721API.md#setapprovalforall) | **POST** /erc721/{name}/set-approval-for-all | 
*Erc721API* | [**symbol**](docs/Erc721API.md#symbol) | **POST** /erc721/{name}/symbol | 
*Erc721API* | [**tokenUri**](docs/Erc721API.md#tokenuri) | **POST** /erc721/{name}/token-uri | 
*Erc721API* | [**transfer**](docs/Erc721API.md#transfer) | **POST** /erc721/{name}/transfer | 
*Erc721API* | [**transferFrom**](docs/Erc721API.md#transferfrom) | **POST** /erc721/{name}/transfer-from | 
*LitecoinAPI* | [**createLitecoinAccount**](docs/LitecoinAPI.md#createlitecoinaccount) | **POST** /litecoin | 
*LitecoinAPI* | [**getLitecoinAccount**](docs/LitecoinAPI.md#getlitecoinaccount) | **GET** /litecoin/{accountName} | 
*LitecoinAPI* | [**listLitecoinAccounts**](docs/LitecoinAPI.md#listlitecoinaccounts) | **GET** /litecoin | 
*LitecoinAPI* | [**signLitecoinTransaction**](docs/LitecoinAPI.md#signlitecointransaction) | **POST** /litecoin/{accountName}/sign-tx | 
*OneinchAPI* | [**approveCallData**](docs/OneinchAPI.md#approvecalldata) | **POST** /oneinch/approve-call-data | 
*OneinchAPI* | [**approveSpender**](docs/OneinchAPI.md#approvespender) | **POST** /oneinch/approve-spender | 
*OneinchAPI* | [**protocols**](docs/OneinchAPI.md#protocols) | **POST** /oneinch/protocols | 
*OneinchAPI* | [**quote**](docs/OneinchAPI.md#quote) | **POST** /oneinch/quote | 
*OneinchAPI* | [**swap**](docs/OneinchAPI.md#swap) | **POST** /oneinch/{accountName}/swap | 
*OneinchAPI* | [**tokens**](docs/OneinchAPI.md#tokens) | **POST** /oneinch/tokens | 
*OnramperAPI* | [**onRamperCheckout**](docs/OnramperAPI.md#onrampercheckout) | **POST** /onramper/fund/${accountName} | 
*OnramperAPI* | [**onRamperGetQuotesBuy**](docs/OnramperAPI.md#onrampergetquotesbuy) | **GET** /onramper/quotes/buy | 
*OnramperAPI* | [**onRamperGetQuotesSell**](docs/OnramperAPI.md#onrampergetquotessell) | **GET** /onramper/quotes/sell | 
*OnramperAPI* | [**onRamperGetSupportedAssets**](docs/OnramperAPI.md#onrampergetsupportedassets) | **GET** /onramper/assets | 
*OnramperAPI* | [**onRamperGetSupportedCurrencies**](docs/OnramperAPI.md#onrampergetsupportedcurrencies) | **GET** /onramper/currencies | 
*OnramperAPI* | [**onRamperGetSupportedDefaultsAll**](docs/OnramperAPI.md#onrampergetsupporteddefaultsall) | **GET** /onramper/defaults | 
*OnramperAPI* | [**onRamperGetSupportedOnRampsAll**](docs/OnramperAPI.md#onrampergetsupportedonrampsall) | **GET** /onramper/onramps | 
*OnramperAPI* | [**onRamperGetSupportedPaymentTypes**](docs/OnramperAPI.md#onrampergetsupportedpaymenttypes) | **GET** /onramper/payment-types | 
*OnramperAPI* | [**onRamperGetSupportedPaymentTypesFiat**](docs/OnramperAPI.md#onrampergetsupportedpaymenttypesfiat) | **GET** /onramper/payment-types/fiat | 
*PaymentAPI* | [**moralisWebhook**](docs/PaymentAPI.md#moraliswebhook) | **POST** /payment/webhook/{id} | 
*PaymentAPI* | [**paymentCreatePaymentIntent**](docs/PaymentAPI.md#paymentcreatepaymentintent) | **POST** /payment | 
*PaymentAPI* | [**paymentDeletePaymentIntent**](docs/PaymentAPI.md#paymentdeletepaymentintent) | **DELETE** /payment/{id} | 
*PaymentAPI* | [**paymentGetAllPaymentIntents**](docs/PaymentAPI.md#paymentgetallpaymentintents) | **GET** /payment | 
*PaymentAPI* | [**paymentGetAvailableChains**](docs/PaymentAPI.md#paymentgetavailablechains) | **GET** /payment/chains | 
*PaymentAPI* | [**paymentGetPaymentIntent**](docs/PaymentAPI.md#paymentgetpaymentintent) | **GET** /payment/{id} | 
*PaymentAPI* | [**paymentUpdatePaymentIntent**](docs/PaymentAPI.md#paymentupdatepaymentintent) | **PUT** /payment/{id} | 
*PaymentAPI* | [**tatumWebhook**](docs/PaymentAPI.md#tatumwebhook) | **POST** /payment/tatum/webhook/{id} | 
*RippleAPI* | [**createRippleAccount**](docs/RippleAPI.md#createrippleaccount) | **POST** /ripple | 
*RippleAPI* | [**getRippleAccount**](docs/RippleAPI.md#getrippleaccount) | **GET** /ripple/{accountName} | 
*RippleAPI* | [**listRippleAccounts**](docs/RippleAPI.md#listrippleaccounts) | **GET** /ripple | 
*RippleAPI* | [**signRippleTransaction**](docs/RippleAPI.md#signrippletransaction) | **POST** /ripple/{accountName}/sign-tx | 
*SolanaAPI* | [**createSolanaAccount**](docs/SolanaAPI.md#createsolanaaccount) | **POST** /solana | 
*SolanaAPI* | [**getSolanaAccount**](docs/SolanaAPI.md#getsolanaaccount) | **GET** /solana/{accountName} | 
*SolanaAPI* | [**listSolanaAccounts**](docs/SolanaAPI.md#listsolanaaccounts) | **GET** /solana | 
*SolanaAPI* | [**signSolanaTransaction**](docs/SolanaAPI.md#signsolanatransaction) | **POST** /solana/{accountName}/sign-tx | 
*TronAPI* | [**createTronAccount**](docs/TronAPI.md#createtronaccount) | **POST** /tron | 
*TronAPI* | [**getTronAccount**](docs/TronAPI.md#gettronaccount) | **GET** /tron/{accountName} | 
*TronAPI* | [**listTronAccounts**](docs/TronAPI.md#listtronaccounts) | **GET** /tron | 
*TronAPI* | [**signTronTransaction**](docs/TronAPI.md#signtrontransaction) | **POST** /tron/{accountName}/sign-tx | 
*UniSwapAPI* | [**addLiquidity**](docs/UniSwapAPI.md#addliquidity) | **POST** /uniswap/{name}/add-liquidity | 
*UniSwapAPI* | [**removeLiquidity**](docs/UniSwapAPI.md#removeliquidity) | **POST** /uniswap/{name}/remove-liquidity | 
*UniSwapAPI* | [**swapExactETHForTokens**](docs/UniSwapAPI.md#swapexactethfortokens) | **POST** /uniswap/{name}/swap-exact-eth-for-tokens | 
*UniSwapAPI* | [**swapExactTokensForTokens**](docs/UniSwapAPI.md#swapexacttokensfortokens) | **POST** /uniswap/{name}/swap-exact-tokens-for-tokens | 
*YearnAPI* | [**addLiquidity**](docs/YearnAPI.md#addliquidity) | **POST** /yearn/{name}/add-liquidity | 
*YearnAPI* | [**addLiquidityWeth**](docs/YearnAPI.md#addliquidityweth) | **POST** /yearn/{name}/add-liquidity-weth | 
*YearnAPI* | [**removeLiquidity**](docs/YearnAPI.md#removeliquidity) | **POST** /yearn/{name}/remove-liquidity | 
*YearnAPI* | [**removeLiquidityWeth**](docs/YearnAPI.md#removeliquidityweth) | **POST** /yearn/{name}/remove-liquidity-weth | 


## Documentation For Models

 - [AaveInput](docs/AaveInput.md)
 - [AaveReservesData](docs/AaveReservesData.md)
 - [AbiInput](docs/AbiInput.md)
 - [AbiItem](docs/AbiItem.md)
 - [AbiOutput](docs/AbiOutput.md)
 - [AccountControllerResponse](docs/AccountControllerResponse.md)
 - [AccountControllerResponseData](docs/AccountControllerResponseData.md)
 - [AccountResponse](docs/AccountResponse.md)
 - [AvailablePaymentMethod](docs/AvailablePaymentMethod.md)
 - [BalanceResponse](docs/BalanceResponse.md)
 - [BitcoinCashInput](docs/BitcoinCashInput.md)
 - [BitcoinCashTransactionInput](docs/BitcoinCashTransactionInput.md)
 - [BitcoinInput](docs/BitcoinInput.md)
 - [BitcoinTransactionInput](docs/BitcoinTransactionInput.md)
 - [BitcoinTransactionOutput](docs/BitcoinTransactionOutput.md)
 - [Block](docs/Block.md)
 - [BroadCastRawTransactionResponse](docs/BroadCastRawTransactionResponse.md)
 - [BroadcastInput](docs/BroadcastInput.md)
 - [ConveyorFinanceControllerResponse](docs/ConveyorFinanceControllerResponse.md)
 - [CosmosInput](docs/CosmosInput.md)
 - [CosmosTransactionInput](docs/CosmosTransactionInput.md)
 - [CreateAccountInput](docs/CreateAccountInput.md)
 - [CreatePaymentIntentInput](docs/CreatePaymentIntentInput.md)
 - [CryptoCurrency](docs/CryptoCurrency.md)
 - [DeployInput](docs/DeployInput.md)
 - [DogeCoinInput](docs/DogeCoinInput.md)
 - [DogeCoinTransactionInput](docs/DogeCoinTransactionInput.md)
 - [ENSReverseResolveResponse](docs/ENSReverseResolveResponse.md)
 - [EnsResolveInput](docs/EnsResolveInput.md)
 - [EnsResolveResponse](docs/EnsResolveResponse.md)
 - [EosInput](docs/EosInput.md)
 - [EosTransactionInput](docs/EosTransactionInput.md)
 - [Erc1155Request](docs/Erc1155Request.md)
 - [Erc1155Response](docs/Erc1155Response.md)
 - [Erc20Response](docs/Erc20Response.md)
 - [Erc721Request](docs/Erc721Request.md)
 - [Erc721Response](docs/Erc721Response.md)
 - [FiatCurrency](docs/FiatCurrency.md)
 - [GetSupportedOnRampsResponse](docs/GetSupportedOnRampsResponse.md)
 - [GetSupportedOnRampsResponseMessageInner](docs/GetSupportedOnRampsResponseMessageInner.md)
 - [GetSupportedOnRampsResponseMessageInnerIcons](docs/GetSupportedOnRampsResponseMessageInnerIcons.md)
 - [GetSupportedOnRampsResponseMessageInnerIconsPng](docs/GetSupportedOnRampsResponseMessageInnerIconsPng.md)
 - [GetSwapDto](docs/GetSwapDto.md)
 - [IERC20Approval](docs/IERC20Approval.md)
 - [IERC20Transfer](docs/IERC20Transfer.md)
 - [INFTApproval](docs/INFTApproval.md)
 - [INFTApprovalERC1155](docs/INFTApprovalERC1155.md)
 - [INFTApprovalERC721](docs/INFTApprovalERC721.md)
 - [INFTTransfer](docs/INFTTransfer.md)
 - [INativeBalance](docs/INativeBalance.md)
 - [IOldNFTApproval](docs/IOldNFTApproval.md)
 - [IWebhook](docs/IWebhook.md)
 - [InputBody](docs/InputBody.md)
 - [InternalTransaction](docs/InternalTransaction.md)
 - [LitecoinInput](docs/LitecoinInput.md)
 - [LitecoinTransactionInput](docs/LitecoinTransactionInput.md)
 - [Log](docs/Log.md)
 - [Message](docs/Message.md)
 - [NonceResponse](docs/NonceResponse.md)
 - [PaymentIntentResponse](docs/PaymentIntentResponse.md)
 - [PaymentType](docs/PaymentType.md)
 - [PingResponse](docs/PingResponse.md)
 - [Quote](docs/Quote.md)
 - [RippleInput](docs/RippleInput.md)
 - [RippleTransactionInput](docs/RippleTransactionInput.md)
 - [SellQuote](docs/SellQuote.md)
 - [SignMessage](docs/SignMessage.md)
 - [SignTypedData](docs/SignTypedData.md)
 - [SolanaInput](docs/SolanaInput.md)
 - [SolanaTransactionInput](docs/SolanaTransactionInput.md)
 - [SupportedAssetResponse](docs/SupportedAssetResponse.md)
 - [SupportedAssetResponseAssetsInner](docs/SupportedAssetResponseAssetsInner.md)
 - [SupportedCurrenciesResponse](docs/SupportedCurrenciesResponse.md)
 - [SupportedDefaultResponse](docs/SupportedDefaultResponse.md)
 - [SupportedDefaultResponseDefaults](docs/SupportedDefaultResponseDefaults.md)
 - [SupportedDefaultResponseDefaultsId](docs/SupportedDefaultResponseDefaultsId.md)
 - [SupportedPaymentTypesCurrencyResponse](docs/SupportedPaymentTypesCurrencyResponse.md)
 - [SupportedPaymentTypesMessage](docs/SupportedPaymentTypesMessage.md)
 - [TokenSwapParams](docs/TokenSwapParams.md)
 - [Transaction](docs/Transaction.md)
 - [TransactionData](docs/TransactionData.md)
 - [TransactionInput](docs/TransactionInput.md)
 - [TransactionInputMetaData](docs/TransactionInputMetaData.md)
 - [TransactionInputSupportedParams](docs/TransactionInputSupportedParams.md)
 - [TransactionInputSupportedParamsPartnerData](docs/TransactionInputSupportedParamsPartnerData.md)
 - [TransactionInputSupportedParamsPartnerDataRedirectUrl](docs/TransactionInputSupportedParamsPartnerDataRedirectUrl.md)
 - [TransactionInputSupportedParamsTheme](docs/TransactionInputSupportedParamsTheme.md)
 - [TransactionInputWallet](docs/TransactionInputWallet.md)
 - [TransactionRequest](docs/TransactionRequest.md)
 - [TransactionResponse](docs/TransactionResponse.md)
 - [TransactionResponseInfo](docs/TransactionResponseInfo.md)
 - [TransactionResponseTx](docs/TransactionResponseTx.md)
 - [TriggerOutput](docs/TriggerOutput.md)
 - [TronInput](docs/TronInput.md)
 - [TronTransactionInput](docs/TronTransactionInput.md)
 - [Tx](docs/Tx.md)
 - [UniswapInput](docs/UniswapInput.md)


<a id="documentation-for-authorization"></a>
## Documentation For Authorization


Authentication schemes defined for the API:
<a id="BearerAuth"></a>
### BearerAuth

- **Type**: API key
- **API key parameter name**: Authorization
- **Location**: HTTP header

<a id="OAuth2"></a>
### OAuth2

- **Type**: OAuth
- **Flow**: password
- **Authorization URL**: 
- **Scopes**: 
 - **authorization_code**: grants authorization_code

<a id="ApiKeyAuth"></a>
### ApiKeyAuth

- **Type**: API key
- **API key parameter name**: x-api-key
- **Location**: HTTP header


## Author



