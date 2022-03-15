package com.fukuyoshi.monthpickergregorian;

import android.app.Dialog;
import android.content.DialogInterface;
import android.os.Bundle;

import com.fukuyoshi.monthpickergregorian.adapter.RNMonthPickerProps;
import com.fukuyoshi.monthpickergregorian.builder.PickerViewFactory;

import androidx.fragment.app.DialogFragment;

public class RNMonthPickerDialog extends DialogFragment {
  private RNMonthPickerProps props;

  public RNMonthPickerDialog(RNMonthPickerProps props) {
    this.props = props;
  }

  @Override
  public void onDismiss(DialogInterface dialog) {
    props.onChange();
    super.dismiss();
  }

  @Override
  public Dialog onCreateDialog(Bundle savedInstanceState) {
    PickerViewFactory pickerViewFactory = new PickerViewFactory(props, this);
    return pickerViewFactory.build();
  }
}
