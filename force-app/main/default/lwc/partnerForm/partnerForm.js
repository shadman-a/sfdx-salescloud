import { LightningElement } from 'lwc';
import { ShowToastEvent } from 'lightning/platformShowToastEvent';

const TITLE_SUCCESS = 'Lead Created!';
const MESSAGE_SUCCESS = 'You have successfully created a Lead';


export default class PartnerForm extends LightningElement {
  

    handleLeadCreated() {
      // Fire event for Toast to appear that Order was created
      const evt = new ShowToastEvent({
          title: TITLE_SUCCESS,
          message: MESSAGE_SUCCESS,
          variant: 'success'
      });
      this.dispatchEvent(evt);
  }
}