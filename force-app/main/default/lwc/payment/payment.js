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
import { LightningElement, wire } from "lwc";
import submitPayment from "@salesforce/apex/PaymentController.submitPayment";

export default class Payment extends LightningElement {
    paymentOption;
    paymentResult;
    error;

    get options() {
        return [
            { label: 'Debit Card', value: 'debitCard' },
            { label: 'Credit Card', value: 'creditCard' },
            { label: 'PayPal', value: 'paypal' },
        ];
    }

    handleChange(event) {
        this.paymentOption = event.target.value;
        console.log(this.paymentOption);
    }

    submit() {
        submitPayment({ paymentType: this.paymentOption })
            .then(result => {
                this.paymentResult = result;
                this.error = undefined;
            })
            .catch(error => {
                this.error = error;
                this.paymentResult = undefined;
            })
    }

}
