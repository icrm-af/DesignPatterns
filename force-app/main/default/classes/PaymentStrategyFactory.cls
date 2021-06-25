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
public with sharing class PaymentStrategyFactory {
	public static IPayment getStrategy(String strategyName) {
		switch on strategyName.toLowerCase() {
			when 'debitcard' {
				return new DebitCard();
			}
			when 'creditcard' {
				return new CreditCard();
			}
			when 'paypal' {
				return new Paypal();
			}
		}
		return null;
	}
}
