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
public with sharing class DebitCard implements IPayment {
	public Boolean submitPayment() {
		System.debug('calling IPayment from Debit Card');
		return true;
	}
}