.class Lcom/android/settings/wifi/WifiApDialog;
.super Landroid/app/AlertDialog;
.source "WifiApDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/text/TextWatcher;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# static fields
.field static final BUTTON_SUBMIT:I = -0x1

.field private static final DIALOG_WRONG_PASSWORD_WARN:I = 0x0

.field private static final DIALOG_WRONG_SSID_WARN:I = 0x0

.field private static final OPEN_INDEX:I = 0x0

.field private static final TAG:Ljava/lang/String; = "WifiApDialog"

.field private static final WEP_INDEX:I = 0x1

.field private static final WPA_CCMP_INDEX:I = 0x2


# instance fields
.field private isHide:Z

.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mCheckHideMyDevice:Z

.field private mDefaultSsid:Ljava/lang/String;

.field private mHideMyDevice:Landroid/widget/CheckBox;

.field private mHideView:Landroid/widget/TextView;

.field private final mItemListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private final mListener:Landroid/content/DialogInterface$OnClickListener;

.field private mPassword:Landroid/widget/EditText;

.field private mSecurityType:I

.field private mSsid:Landroid/widget/EditText;

.field private mTethering:Landroid/widget/CheckBox;

.field private mView:Landroid/view/View;

.field mWifiConfig:Landroid/net/wifi/WifiConfiguration;

.field private setHide:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Landroid/net/wifi/WifiConfiguration;)V
    .locals 1
    .parameter "context"
    .parameter "listener"
    .parameter "wifiConfig"

    .prologue
    .line 122
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 91
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mSecurityType:I

    .line 109
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mDefaultSsid:Ljava/lang/String;

    .line 123
    iput-object p2, p0, Lcom/android/settings/wifi/WifiApDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    .line 124
    iput-object p3, p0, Lcom/android/settings/wifi/WifiApDialog;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 125
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mItemListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 126
    if-eqz p3, :cond_0

    .line 127
    invoke-static {p3}, Lcom/android/settings/wifi/AccessPoint;->getSecurity2(Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mSecurityType:I

    .line 129
    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Landroid/widget/AdapterView$OnItemSelectedListener;Landroid/net/wifi/WifiConfiguration;)V
    .locals 1
    .parameter "context"
    .parameter "listener"
    .parameter "item_listener"
    .parameter "wifiConfig"

    .prologue
    .line 133
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 91
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mSecurityType:I

    .line 109
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mDefaultSsid:Ljava/lang/String;

    .line 134
    iput-object p2, p0, Lcom/android/settings/wifi/WifiApDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    .line 135
    iput-object p4, p0, Lcom/android/settings/wifi/WifiApDialog;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 136
    iput-object p3, p0, Lcom/android/settings/wifi/WifiApDialog;->mItemListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 137
    if-eqz p4, :cond_0

    .line 138
    invoke-static {p4}, Lcom/android/settings/wifi/AccessPoint;->getSecurity2(Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mSecurityType:I

    .line 139
    :cond_0
    return-void
.end method

.method private validate()V
    .locals 0

    .prologue
    .line 380
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter "editable"

    .prologue
    .line 412
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiApDialog;->validate()V

    .line 413
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 409
    return-void
.end method

.method public dismiss()V
    .locals 4

    .prologue
    .line 606
    const-string v2, "WifiApDialog"

    const-string v3, "dismiss()"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 607
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mView:Landroid/view/View;

    const v3, 0x7f0b0131

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSpinnerDialog()Landroid/app/Dialog;

    move-result-object v1

    .line 608
    .local v1, securitySpinnerDalog:Landroid/app/Dialog;
    if-eqz v1, :cond_0

    .line 609
    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 610
    const/4 v1, 0x0

    .line 613
    :cond_0
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mView:Landroid/view/View;

    const v3, 0x7f0b0135

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSpinnerDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 614
    .local v0, channelSpinnerDalog:Landroid/app/Dialog;
    if-eqz v0, :cond_1

    .line 615
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 616
    const/4 v0, 0x0

    .line 619
    :cond_1
    invoke-super {p0}, Landroid/app/AlertDialog;->dismiss()V

    .line 620
    return-void
.end method

.method public getConfig()Landroid/net/wifi/WifiConfiguration;
    .locals 8

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v7, "WifiApDialog"

    const-string v6, ""

    .line 145
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 153
    .local v0, config:Landroid/net/wifi/WifiConfiguration;
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mSsid:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 158
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mHideMyDevice:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-nez v2, :cond_0

    move v2, v5

    :goto_0
    iput-boolean v2, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 162
    const-string v2, "WifiApDialog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getConfig - hiddenSSID  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mView:Landroid/view/View;

    const v3, 0x7f0b0135

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v2

    iput v2, v0, Landroid/net/wifi/WifiConfiguration;->channel:I

    .line 169
    iput-boolean v5, v0, Landroid/net/wifi/WifiConfiguration;->useMifi:Z

    .line 172
    iget v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mSecurityType:I

    packed-switch v2, :pswitch_data_0

    .line 241
    const/4 v2, 0x0

    :goto_1
    return-object v2

    :cond_0
    move v2, v4

    .line 158
    goto :goto_0

    .line 174
    :pswitch_0
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v2, v4}, Ljava/util/BitSet;->set(I)V

    .line 176
    const-string v2, ""

    iput-object v6, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 178
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    iget v3, v0, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    const-string v4, ""

    aput-object v6, v2, v3

    .line 179
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->andNot(Ljava/util/BitSet;)V

    .line 180
    const-string v2, "WifiApDialog"

    const-string v2, "getConfig SECURITY_NONE - GroupCipher  0"

    invoke-static {v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v0

    .line 184
    goto :goto_1

    .line 188
    :pswitch_1
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v2, v4}, Ljava/util/BitSet;->set(I)V

    .line 189
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->andNot(Ljava/util/BitSet;)V

    .line 191
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x1a

    if-ne v2, v3, :cond_2

    .line 192
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v2, v5}, Ljava/util/BitSet;->set(I)V

    .line 196
    :goto_2
    const-string v2, "WifiApDialog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getConfig SECURITY_WEP : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v3, v4}, Ljava/util/BitSet;->get(I)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->length()I

    move-result v2

    if-eqz v2, :cond_1

    .line 198
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 199
    .local v1, password:Ljava/lang/String;
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    iget v3, v0, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    aput-object v1, v2, v3

    .line 200
    const-string v2, ""

    iput-object v6, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .end local v1           #password:Ljava/lang/String;
    :cond_1
    move-object v2, v0

    .line 202
    goto/16 :goto_1

    .line 194
    :cond_2
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v2, v4}, Ljava/util/BitSet;->set(I)V

    goto :goto_2

    .line 205
    :pswitch_2
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v2, v5}, Ljava/util/BitSet;->set(I)V

    .line 206
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v2, v4}, Ljava/util/BitSet;->set(I)V

    .line 207
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->andNot(Ljava/util/BitSet;)V

    .line 208
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    .line 209
    const-string v2, "WifiApDialog"

    const-string v2, "getConfig SECURITY_PSK2 : 3"

    invoke-static {v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->length()I

    move-result v2

    if-eqz v2, :cond_3

    .line 211
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 212
    .restart local v1       #password:Ljava/lang/String;
    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 213
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    iget v3, v0, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    const-string v4, ""

    aput-object v6, v2, v3

    .end local v1           #password:Ljava/lang/String;
    :cond_3
    move-object v2, v0

    .line 215
    goto/16 :goto_1

    .line 172
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    const-string v2, "WifiApDialog"

    .line 383
    const-string v0, "WifiApDialog"

    const-string v0, "========== onClick =============="

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mHideMyDevice:Landroid/widget/CheckBox;

    if-ne p1, v0, :cond_0

    .line 386
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mHideMyDevice:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mCheckHideMyDevice:Z

    .line 387
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mHideMyDevice:Landroid/widget/CheckBox;

    iget-boolean v1, p0, Lcom/android/settings/wifi/WifiApDialog;->mCheckHideMyDevice:Z

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 388
    const-string v0, "WifiApDialog"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mHideMyDevice set to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/settings/wifi/WifiApDialog;->mCheckHideMyDevice:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    .end local p1
    :goto_0
    return-void

    .line 389
    .restart local p1
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mHideView:Landroid/widget/TextView;

    if-ne p1, v0, :cond_1

    .line 390
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mHideMyDevice:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mCheckHideMyDevice:Z

    .line 391
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mHideMyDevice:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->performClick()Z

    goto :goto_0

    .line 395
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    check-cast p1, Landroid/widget/CheckBox;

    .end local p1
    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0x90

    :goto_1
    or-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 399
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_0

    .line 395
    :cond_2
    const/16 v1, 0x80

    goto :goto_1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter "savedInstanceState"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const v5, 0x7f0b0131

    const-string v8, ""

    .line 245
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiApDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f030063

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mView:Landroid/view/View;

    .line 255
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mView:Landroid/view/View;

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/WifiApDialog;->setView(Landroid/view/View;)V

    .line 256
    invoke-virtual {p0, v7}, Lcom/android/settings/wifi/WifiApDialog;->setInverseBackgroundForced(Z)V

    .line 258
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiApDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 261
    .local v0, context:Landroid/content/Context;
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiApDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x15

    invoke-virtual {v2, v3}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 263
    const v2, 0x7f0905b8

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/WifiApDialog;->setTitle(I)V

    .line 264
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mView:Landroid/view/View;

    const v3, 0x7f0b012b

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 265
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mView:Landroid/view/View;

    const v3, 0x7f0b012c

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mSsid:Landroid/widget/EditText;

    .line 266
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mView:Landroid/view/View;

    const v3, 0x7f0b0132

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    .line 269
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mView:Landroid/view/View;

    const v3, 0x7f0b0130

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mHideMyDevice:Landroid/widget/CheckBox;

    .line 270
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mHideMyDevice:Landroid/widget/CheckBox;

    if-eqz v2, :cond_0

    .line 271
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mHideMyDevice:Landroid/widget/CheckBox;

    invoke-virtual {v2, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 272
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mHideMyDevice:Landroid/widget/CheckBox;

    iget-boolean v3, p0, Lcom/android/settings/wifi/WifiApDialog;->setHide:Z

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 274
    :cond_0
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mView:Landroid/view/View;

    const v3, 0x7f0b012f

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mHideView:Landroid/widget/TextView;

    .line 275
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mHideView:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 276
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mHideView:Landroid/widget/TextView;

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 281
    const/4 v2, -0x1

    const v3, 0x7f0901f2

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/wifi/WifiApDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v2, v3, v4}, Lcom/android/settings/wifi/WifiApDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 284
    const/4 v2, -0x2

    const v3, 0x7f0901b9

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/wifi/WifiApDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v2, v3, v4}, Lcom/android/settings/wifi/WifiApDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 287
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v2, :cond_3

    .line 288
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mSsid:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiApDialog;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v3, v3, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 292
    iget v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mSecurityType:I

    packed-switch v2, :pswitch_data_0

    .line 345
    :goto_0
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mView:Landroid/view/View;

    const v3, 0x7f0b0135

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiApDialog;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget v3, v3, Landroid/net/wifi/WifiConfiguration;->channel:I

    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setSelection(I)V

    .line 354
    :goto_1
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mSsid:Landroid/widget/EditText;

    invoke-virtual {v2, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 355
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v2, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 356
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mView:Landroid/view/View;

    const v3, 0x7f0b0133

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    invoke-virtual {v2, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 361
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mView:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiApDialog;->mItemListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 365
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 367
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiApDialog;->showSecurityFields()V

    .line 368
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiApDialog;->validate()V

    .line 369
    return-void

    .line 296
    :pswitch_0
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mView:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    invoke-virtual {v2, v6}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_0

    .line 317
    :pswitch_1
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v2, v2, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiApDialog;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget v3, v3, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    aget-object v1, v2, v3

    .line 319
    .local v1, str:Ljava/lang/String;
    if-eqz v1, :cond_1

    const-string v2, ""

    if-eq v1, v8, :cond_1

    .line 321
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 324
    :cond_1
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mView:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    invoke-virtual {v2, v7}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_0

    .line 329
    .end local v1           #str:Ljava/lang/String;
    :pswitch_2
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, v2, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 331
    .restart local v1       #str:Ljava/lang/String;
    if-eqz v1, :cond_2

    const-string v2, ""

    if-eq v1, v8, :cond_2

    .line 333
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 336
    :cond_2
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mView:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setSelection(I)V

    goto/16 :goto_0

    .line 351
    .end local v1           #str:Ljava/lang/String;
    :cond_3
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mSsid:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiApDialog;->mDefaultSsid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 292
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .parameter "parent"
    .parameter "view"
    .parameter "position"
    .parameter "id"

    .prologue
    const/4 v0, 0x1

    .line 416
    if-nez p3, :cond_0

    .line 417
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mSecurityType:I

    .line 436
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiApDialog;->showSecurityFields()V

    .line 437
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiApDialog;->validate()V

    .line 438
    return-void

    .line 420
    :cond_0
    if-ne p3, v0, :cond_1

    .line 421
    iput v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mSecurityType:I

    goto :goto_0

    .line 429
    :cond_1
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mSecurityType:I

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const-string v1, "WifiApDialog"

    .line 512
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 513
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_1

    .line 516
    const-string v0, "WifiApDialog"

    const-string v0, "onKeyDown 1:   setPasswordText"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/app/AlertDialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 520
    :cond_1
    const-string v0, "WifiApDialog"

    const-string v0, "onKeyDown 2:   setPasswordText"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .parameter "parent"

    .prologue
    .line 441
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 406
    return-void
.end method

.method public setBroadcastChannel(I)V
    .locals 2
    .parameter "bset"

    .prologue
    const v1, 0x7f0b0135

    .line 495
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    if-eqz v0, :cond_0

    .line 496
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/widget/Spinner;

    invoke-virtual {p0, p1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 498
    :cond_0
    return-void
.end method

.method public setCheckHideMyDeivce(Z)V
    .locals 3
    .parameter "enable"

    .prologue
    .line 527
    const-string v0, "WifiApDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setHide "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiApDialog;->setHide:Z

    .line 532
    return-void

    .line 529
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDefaultSsidText(Ljava/lang/String;)V
    .locals 2
    .parameter "defaultSsid"

    .prologue
    .line 472
    const-string v0, "WifiApDialog"

    const-string v1, "setDefaultSsidText"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    iput-object p1, p0, Lcom/android/settings/wifi/WifiApDialog;->mDefaultSsid:Ljava/lang/String;

    .line 474
    return-void
.end method

.method public setHideDeviceStatus(Z)V
    .locals 2
    .parameter "bSet"

    .prologue
    .line 477
    const-string v0, "WifiApDialog"

    const-string v1, "setDefaultSsidText"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mHideMyDevice:Landroid/widget/CheckBox;

    if-eqz v0, :cond_0

    .line 480
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mHideMyDevice:Landroid/widget/CheckBox;

    if-nez p1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 486
    :cond_0
    return-void

    .line 480
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setPasswordText(Ljava/lang/String;)V
    .locals 2
    .parameter "password"

    .prologue
    .line 502
    if-eqz p1, :cond_0

    .line 503
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 504
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 510
    :goto_0
    return-void

    .line 506
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 507
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_0
.end method

.method public setSecurityMode(I)V
    .locals 3
    .parameter "securityMode"

    .prologue
    .line 535
    const-string v0, "WifiApDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSecurityMode  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    iput p1, p0, Lcom/android/settings/wifi/WifiApDialog;->mSecurityType:I

    .line 540
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mView:Landroid/view/View;

    const v1, 0x7f0b0131

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/widget/Spinner;

    invoke-virtual {p0, p1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 598
    return-void
.end method

.method public setSsidText(I)V
    .locals 2
    .parameter "resid"

    .prologue
    .line 467
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mSsid:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(I)V

    .line 468
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mSsid:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApDialog;->mSsid:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 469
    return-void
.end method

.method public setSsidText(Ljava/lang/String;)V
    .locals 2
    .parameter "ssid"

    .prologue
    .line 462
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mSsid:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 463
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mSsid:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApDialog;->mSsid:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 465
    return-void
.end method

.method public showSecurityFields()V
    .locals 4

    .prologue
    const v3, 0x7f0b010d

    const v2, 0x7f0b0031

    .line 447
    iget v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mSecurityType:I

    if-nez v0, :cond_0

    .line 448
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 458
    :goto_0
    return-void

    .line 451
    :cond_0
    iget v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mSecurityType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 452
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0901f8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 456
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 453
    :cond_2
    iget v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mSecurityType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 454
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0901f9

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1
.end method
