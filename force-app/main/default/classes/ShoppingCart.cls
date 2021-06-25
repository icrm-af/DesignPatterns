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
public with sharing class ShoppingCart {
	public IPayment paymentStrategy;

	public ShoppingCart(IPayment payment) {
		this.paymentStrategy = payment;
	}

	public Boolean submitPayment() {
		return this.paymentStrategy.submitPayment();
	}
}
