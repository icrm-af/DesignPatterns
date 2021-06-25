/**
 * @description       :
 * @author            : Adrian Flores
 * @group             :
 * @last modified on  : 06-24-2021
 * @last modified by  : Adrian Flores
 * Modifications Log
 * Ver   Date         Author          Modification
 * 1.0   06-24-2021   Adrian Flores   Initial Version
 **/
public with sharing class PaymentController {
	@AuraEnabled
	public static Boolean submitPayment(String paymentType) {
		Boolean result = false;
		try {
			ShoppingCart cart = new ShoppingCart(PaymentStrategyFactory.getStrategy(paymentType));
			result = cart.submitPayment();
		} catch (Exception e) {
			throw new AuraHandledException(e.getMessage());
		}
		return result;
	}
}
