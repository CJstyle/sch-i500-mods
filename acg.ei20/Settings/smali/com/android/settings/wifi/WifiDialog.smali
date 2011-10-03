.class Lcom/android/settings/wifi/WifiDialog;
.super Landroid/app/AlertDialog;
.source "WifiDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/text/TextWatcher;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# static fields
.field static final BUTTON_CANCELNW:I = -0x2

.field static final BUTTON_CONNECT:I = -0x1

.field static final BUTTON_CONNECTED_EDIT:I = -0x3

.field static final BUTTON_EDIT:I = -0x2

.field static final BUTTON_EDITNW:I = -0x1

.field static final BUTTON_FORGET:I = -0x1

.field static final BUTTON_FORGETNW:I = -0x2

.field static final BUTTON_MANAGE_CONNECT:I = -0x1

.field static final BUTTON_MANAGE_EDIT:I = -0x3

.field static final BUTTON_MANAGE_REMOVE:I = -0x2

.field static final BUTTON_SUBMIT:I = -0x3

.field static final BUTTON_VIEW:I = -0x3

.field static final BUTTON_WPS_PIN:I = -0x3

.field public static ConnectedCorrectPassword:Ljava/lang/String; = null

.field public static ConnectedPassword:Ljava/lang/String; = null

.field private static final KEYSTORE_SPACE:Ljava/lang/String; = "keystore://"

.field public static Remembered:I = 0x0

.field private static final TAG:Ljava/lang/String; = "WifiDialog"

.field public static bEdit:I

.field public static changedssid:Ljava/lang/String;

.field public static previousssid:Ljava/lang/String;


# instance fields
.field final details:Z

.field final edit:Z

.field private final mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

.field private mConnectedAPEdit:I

.field private mEapAnonymous:Landroid/widget/TextView;

.field private mEapCaCert:Landroid/widget/Spinner;

.field private mEapIdentity:Landroid/widget/TextView;

.field private mEapMethod:Landroid/widget/Spinner;

.field private mEapUserCert:Landroid/widget/Spinner;

.field private final mListener:Landroid/content/DialogInterface$OnClickListener;

.field public mPassword:Landroid/widget/EditText;

.field private mPhase2:Landroid/widget/Spinner;

.field public mSecurity:I

.field public mSsid:Landroid/widget/TextView;

.field private mView:Landroid/view/View;

.field final manageNetwork:Z

.field final retry:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const-string v1, " "

    .line 96
    const-string v0, " "

    sput-object v1, Lcom/android/settings/wifi/WifiDialog;->ConnectedPassword:Ljava/lang/String;

    .line 98
    const-string v0, " "

    sput-object v1, Lcom/android/settings/wifi/WifiDialog;->ConnectedCorrectPassword:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Lcom/android/settings/wifi/AccessPoint;Z)V
    .locals 1
    .parameter "context"
    .parameter "listener"
    .parameter "accessPoint"
    .parameter "edit"

    .prologue
    const/4 v0, 0x0

    .line 112
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 79
    iput v0, p0, Lcom/android/settings/wifi/WifiDialog;->mConnectedAPEdit:I

    .line 113
    iput-boolean p4, p0, Lcom/android/settings/wifi/WifiDialog;->edit:Z

    .line 115
    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiDialog;->retry:Z

    .line 117
    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiDialog;->details:Z

    .line 118
    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiDialog;->manageNetwork:Z

    .line 119
    iput-object p2, p0, Lcom/android/settings/wifi/WifiDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    .line 120
    iput-object p3, p0, Lcom/android/settings/wifi/WifiDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    .line 121
    iput v0, p0, Lcom/android/settings/wifi/WifiDialog;->mConnectedAPEdit:I

    .line 123
    if-nez p3, :cond_0

    :goto_0
    iput v0, p0, Lcom/android/settings/wifi/WifiDialog;->mSecurity:I

    .line 124
    return-void

    .line 123
    :cond_0
    iget v0, p3, Lcom/android/settings/wifi/AccessPoint;->security:I

    goto :goto_0
.end method

.method constructor <init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Lcom/android/settings/wifi/AccessPoint;ZZ)V
    .locals 1
    .parameter "context"
    .parameter "listener"
    .parameter "accessPoint"
    .parameter "edit"
    .parameter "retry"

    .prologue
    const/4 v0, 0x0

    .line 131
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 79
    iput v0, p0, Lcom/android/settings/wifi/WifiDialog;->mConnectedAPEdit:I

    .line 132
    iput-boolean p4, p0, Lcom/android/settings/wifi/WifiDialog;->edit:Z

    .line 133
    iput-boolean p5, p0, Lcom/android/settings/wifi/WifiDialog;->retry:Z

    .line 134
    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiDialog;->details:Z

    .line 135
    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiDialog;->manageNetwork:Z

    .line 136
    iput-object p2, p0, Lcom/android/settings/wifi/WifiDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    .line 137
    iput-object p3, p0, Lcom/android/settings/wifi/WifiDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    .line 138
    iput v0, p0, Lcom/android/settings/wifi/WifiDialog;->mConnectedAPEdit:I

    .line 139
    if-nez p3, :cond_0

    :goto_0
    iput v0, p0, Lcom/android/settings/wifi/WifiDialog;->mSecurity:I

    .line 140
    return-void

    .line 139
    :cond_0
    iget v0, p3, Lcom/android/settings/wifi/AccessPoint;->security:I

    goto :goto_0
.end method

.method constructor <init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Lcom/android/settings/wifi/AccessPoint;ZZZ)V
    .locals 2
    .parameter "context"
    .parameter "listener"
    .parameter "accessPoint"
    .parameter "edit"
    .parameter "retry"
    .parameter "details"

    .prologue
    const/4 v1, 0x0

    .line 144
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 79
    iput v1, p0, Lcom/android/settings/wifi/WifiDialog;->mConnectedAPEdit:I

    .line 145
    iput-boolean p4, p0, Lcom/android/settings/wifi/WifiDialog;->edit:Z

    .line 146
    iput-boolean p5, p0, Lcom/android/settings/wifi/WifiDialog;->retry:Z

    .line 147
    iput-boolean p6, p0, Lcom/android/settings/wifi/WifiDialog;->details:Z

    .line 148
    iput-boolean v1, p0, Lcom/android/settings/wifi/WifiDialog;->manageNetwork:Z

    .line 149
    iput-object p2, p0, Lcom/android/settings/wifi/WifiDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    .line 150
    iput-object p3, p0, Lcom/android/settings/wifi/WifiDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    .line 151
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/settings/wifi/WifiDialog;->mConnectedAPEdit:I

    .line 152
    if-nez p3, :cond_0

    move v0, v1

    :goto_0
    iput v0, p0, Lcom/android/settings/wifi/WifiDialog;->mSecurity:I

    .line 153
    return-void

    .line 152
    :cond_0
    iget v0, p3, Lcom/android/settings/wifi/AccessPoint;->security:I

    goto :goto_0
.end method

.method constructor <init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Lcom/android/settings/wifi/AccessPoint;ZZZZ)V
    .locals 4
    .parameter "context"
    .parameter "listener"
    .parameter "accessPoint"
    .parameter "edit"
    .parameter "retry"
    .parameter "details"
    .parameter "manage"

    .prologue
    const/4 v3, 0x0

    .line 157
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 79
    iput v3, p0, Lcom/android/settings/wifi/WifiDialog;->mConnectedAPEdit:I

    .line 158
    iput-boolean p4, p0, Lcom/android/settings/wifi/WifiDialog;->edit:Z

    .line 159
    iput-boolean p5, p0, Lcom/android/settings/wifi/WifiDialog;->retry:Z

    .line 160
    iput-boolean p6, p0, Lcom/android/settings/wifi/WifiDialog;->details:Z

    .line 161
    iput-boolean p7, p0, Lcom/android/settings/wifi/WifiDialog;->manageNetwork:Z

    .line 162
    iput-object p2, p0, Lcom/android/settings/wifi/WifiDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    .line 163
    iput-object p3, p0, Lcom/android/settings/wifi/WifiDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    .line 164
    iput v3, p0, Lcom/android/settings/wifi/WifiDialog;->mConnectedAPEdit:I

    .line 165
    const-string v0, "WifiDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WifiDialog(retry): mAccessPoint \n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wifi/WifiDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wifi/WifiDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v2, v2, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    if-nez p3, :cond_0

    move v0, v3

    :goto_0
    iput v0, p0, Lcom/android/settings/wifi/WifiDialog;->mSecurity:I

    .line 167
    return-void

    .line 166
    :cond_0
    iget v0, p3, Lcom/android/settings/wifi/AccessPoint;->security:I

    goto :goto_0
.end method

.method private addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V
    .locals 4
    .parameter "group"
    .parameter "name"
    .parameter "value"

    .prologue
    .line 448
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030073

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 449
    .local v0, row:Landroid/view/View;
    const v1, 0x7f0b0040

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/widget/TextView;

    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setText(I)V

    .line 450
    const v1, 0x7f0b008e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    invoke-virtual {p0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 451
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 452
    return-void
.end method

.method private loadCertificates(Landroid/widget/Spinner;Ljava/lang/String;)V
    .locals 8
    .parameter "spinner"
    .parameter "prefix"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 575
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v5

    invoke-virtual {v5, p2}, Landroid/security/KeyStore;->saw(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 576
    .local v2, certs:[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 577
    .local v3, context:Landroid/content/Context;
    const v5, 0x7f0901b0

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 579
    .local v4, unspecified:Ljava/lang/String;
    if-eqz v2, :cond_0

    array-length v5, v2

    if-nez v5, :cond_1

    .line 580
    :cond_0
    new-array v2, v7, [Ljava/lang/String;

    .end local v2           #certs:[Ljava/lang/String;
    aput-object v4, v2, v6

    .line 588
    .restart local v2       #certs:[Ljava/lang/String;
    :goto_0
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v5, 0x1090008

    invoke-direct {v0, v3, v5, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 590
    .local v0, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const v5, 0x1090009

    invoke-virtual {v0, v5}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 591
    invoke-virtual {p1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 592
    return-void

    .line 582
    .end local v0           #adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    :cond_1
    array-length v5, v2

    add-int/lit8 v5, v5, 0x1

    new-array v1, v5, [Ljava/lang/String;

    .line 583
    .local v1, array:[Ljava/lang/String;
    aput-object v4, v1, v6

    .line 584
    array-length v5, v2

    invoke-static {v2, v6, v1, v7, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 585
    move-object v2, v1

    goto :goto_0
.end method

.method static requireKeyStore(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 9
    .parameter "config"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 100
    const/4 v5, 0x3

    new-array v4, v5, [Ljava/lang/String;

    iget-object v5, p0, Landroid/net/wifi/WifiConfiguration;->ca_cert:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-virtual {v5}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    iget-object v5, p0, Landroid/net/wifi/WifiConfiguration;->client_cert:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-virtual {v5}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    const/4 v5, 0x2

    iget-object v6, p0, Landroid/net/wifi/WifiConfiguration;->private_key:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-virtual {v6}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 102
    .local v4, values:[Ljava/lang/String;
    move-object v0, v4

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 103
    .local v3, value:Ljava/lang/String;
    if-eqz v3, :cond_0

    const-string v5, "keystore://"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v5, v8

    .line 107
    .end local v3           #value:Ljava/lang/String;
    :goto_1
    return v5

    .line 102
    .restart local v3       #value:Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v3           #value:Ljava/lang/String;
    :cond_1
    move v5, v7

    .line 107
    goto :goto_1
.end method

.method private setCertificate(Landroid/widget/Spinner;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "spinner"
    .parameter "prefix"
    .parameter "cert"

    .prologue
    .line 595
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "keystore://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 596
    if-eqz p3, :cond_0

    invoke-virtual {p3, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 597
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/wifi/WifiDialog;->setSelection(Landroid/widget/Spinner;Ljava/lang/String;)V

    .line 599
    :cond_0
    return-void
.end method

.method private setSelection(Landroid/widget/Spinner;Ljava/lang/String;)V
    .locals 4
    .parameter "spinner"
    .parameter "value"

    .prologue
    .line 602
    if-eqz p2, :cond_0

    .line 603
    invoke-virtual {p1}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/ArrayAdapter;

    .line 604
    .local v0, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v2

    const/4 v3, 0x1

    sub-int v1, v2, v3

    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_0

    .line 605
    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 606
    invoke-virtual {p1, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 611
    .end local v0           #adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    .end local v1           #i:I
    :cond_0
    return-void

    .line 604
    .restart local v0       #adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    .restart local v1       #i:I
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method

.method private showSecurityFields()V
    .locals 8

    .prologue
    const v6, 0x7f0b0149

    const v3, 0x7f0b010d

    const/16 v5, 0x8

    const/4 v4, 0x0

    const-string v7, "CACERT_"

    .line 509
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x14

    invoke-virtual {v1, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 511
    iget v1, p0, Lcom/android/settings/wifi/WifiDialog;->mSecurity:I

    if-nez v1, :cond_1

    .line 512
    iget-object v1, p0, Lcom/android/settings/wifi/WifiDialog;->mView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 514
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 572
    :cond_0
    :goto_0
    return-void

    .line 517
    :cond_1
    iget-object v1, p0, Lcom/android/settings/wifi/WifiDialog;->mView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 519
    iget-object v1, p0, Lcom/android/settings/wifi/WifiDialog;->mPassword:Landroid/widget/EditText;

    if-nez v1, :cond_2

    .line 520
    iget-object v1, p0, Lcom/android/settings/wifi/WifiDialog;->mView:Landroid/view/View;

    const v2, 0x7f0b0132

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/android/settings/wifi/WifiDialog;->mPassword:Landroid/widget/EditText;

    .line 521
    iget-object v1, p0, Lcom/android/settings/wifi/WifiDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v1, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 522
    iget-object v1, p0, Lcom/android/settings/wifi/WifiDialog;->mView:Landroid/view/View;

    const v2, 0x7f0b0133

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    invoke-virtual {v1, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 527
    :cond_2
    const-string v1, "WifiDialog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " ConnectedPassword = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/settings/wifi/WifiDialog;->ConnectedPassword:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    iget v1, p0, Lcom/android/settings/wifi/WifiDialog;->mSecurity:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_3

    .line 544
    iget-object v1, p0, Lcom/android/settings/wifi/WifiDialog;->mView:Landroid/view/View;

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 547
    :cond_3
    iget-object v1, p0, Lcom/android/settings/wifi/WifiDialog;->mView:Landroid/view/View;

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 549
    iget-object v1, p0, Lcom/android/settings/wifi/WifiDialog;->mEapMethod:Landroid/widget/Spinner;

    if-nez v1, :cond_0

    .line 550
    iget-object v1, p0, Lcom/android/settings/wifi/WifiDialog;->mView:Landroid/view/View;

    const v2, 0x7f0b014a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    iput-object v1, p0, Lcom/android/settings/wifi/WifiDialog;->mEapMethod:Landroid/widget/Spinner;

    .line 551
    iget-object v1, p0, Lcom/android/settings/wifi/WifiDialog;->mView:Landroid/view/View;

    const v2, 0x7f0b014b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    iput-object v1, p0, Lcom/android/settings/wifi/WifiDialog;->mPhase2:Landroid/widget/Spinner;

    .line 552
    iget-object v1, p0, Lcom/android/settings/wifi/WifiDialog;->mView:Landroid/view/View;

    const v2, 0x7f0b014c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    iput-object v1, p0, Lcom/android/settings/wifi/WifiDialog;->mEapCaCert:Landroid/widget/Spinner;

    .line 553
    iget-object v1, p0, Lcom/android/settings/wifi/WifiDialog;->mView:Landroid/view/View;

    const v2, 0x7f0b014d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    iput-object v1, p0, Lcom/android/settings/wifi/WifiDialog;->mEapUserCert:Landroid/widget/Spinner;

    .line 554
    iget-object v1, p0, Lcom/android/settings/wifi/WifiDialog;->mView:Landroid/view/View;

    const v2, 0x7f0b014e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/wifi/WifiDialog;->mEapIdentity:Landroid/widget/TextView;

    .line 555
    iget-object v1, p0, Lcom/android/settings/wifi/WifiDialog;->mView:Landroid/view/View;

    const v2, 0x7f0b014f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/wifi/WifiDialog;->mEapAnonymous:Landroid/widget/TextView;

    .line 557
    iget-object v1, p0, Lcom/android/settings/wifi/WifiDialog;->mEapCaCert:Landroid/widget/Spinner;

    const-string v2, "CACERT_"

    invoke-direct {p0, v1, v7}, Lcom/android/settings/wifi/WifiDialog;->loadCertificates(Landroid/widget/Spinner;Ljava/lang/String;)V

    .line 558
    iget-object v1, p0, Lcom/android/settings/wifi/WifiDialog;->mEapUserCert:Landroid/widget/Spinner;

    const-string v2, "USRPKEY_"

    invoke-direct {p0, v1, v2}, Lcom/android/settings/wifi/WifiDialog;->loadCertificates(Landroid/widget/Spinner;Ljava/lang/String;)V

    .line 560
    iget-object v1, p0, Lcom/android/settings/wifi/WifiDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v1, v1, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 561
    iget-object v1, p0, Lcom/android/settings/wifi/WifiDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/settings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 562
    .local v0, config:Landroid/net/wifi/WifiConfiguration;
    iget-object v1, p0, Lcom/android/settings/wifi/WifiDialog;->mEapMethod:Landroid/widget/Spinner;

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->eap:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-virtual {v2}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/settings/wifi/WifiDialog;->setSelection(Landroid/widget/Spinner;Ljava/lang/String;)V

    .line 563
    iget-object v1, p0, Lcom/android/settings/wifi/WifiDialog;->mPhase2:Landroid/widget/Spinner;

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->phase2:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-virtual {v2}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/settings/wifi/WifiDialog;->setSelection(Landroid/widget/Spinner;Ljava/lang/String;)V

    .line 564
    iget-object v1, p0, Lcom/android/settings/wifi/WifiDialog;->mEapCaCert:Landroid/widget/Spinner;

    const-string v2, "CACERT_"

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->ca_cert:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-virtual {v2}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v7, v2}, Lcom/android/settings/wifi/WifiDialog;->setCertificate(Landroid/widget/Spinner;Ljava/lang/String;Ljava/lang/String;)V

    .line 566
    iget-object v1, p0, Lcom/android/settings/wifi/WifiDialog;->mEapUserCert:Landroid/widget/Spinner;

    const-string v2, "USRPKEY_"

    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->private_key:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/android/settings/wifi/WifiDialog;->setCertificate(Landroid/widget/Spinner;Ljava/lang/String;Ljava/lang/String;)V

    .line 568
    iget-object v1, p0, Lcom/android/settings/wifi/WifiDialog;->mEapIdentity:Landroid/widget/TextView;

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->identity:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-virtual {v2}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 569
    iget-object v1, p0, Lcom/android/settings/wifi/WifiDialog;->mEapAnonymous:Landroid/widget/TextView;

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->anonymous_identity:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-virtual {v2}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method private validate()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, -0x3

    const/4 v2, -0x1

    .line 455
    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/WifiDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/WifiDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 457
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDialog;->mSsid:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/WifiDialog;->mSsid:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->length()I

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/wifi/WifiDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v0, v0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    if-ne v0, v2, :cond_5

    :cond_1
    iget v0, p0, Lcom/android/settings/wifi/WifiDialog;->mSecurity:I

    if-ne v0, v5, :cond_2

    iget-object v0, p0, Lcom/android/settings/wifi/WifiDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    iget v0, p0, Lcom/android/settings/wifi/WifiDialog;->mSecurity:I

    if-ne v0, v6, :cond_5

    iget-object v0, p0, Lcom/android/settings/wifi/WifiDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    const/16 v1, 0x8

    if-ge v0, v1, :cond_5

    .line 461
    :cond_3
    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/WifiDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 462
    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/WifiDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 477
    :cond_4
    :goto_0
    return-void

    .line 463
    :cond_5
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDialog;->mPassword:Landroid/widget/EditText;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/settings/wifi/WifiDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/settings/wifi/WifiDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v0, v0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    if-eq v0, v2, :cond_8

    iget v0, p0, Lcom/android/settings/wifi/WifiDialog;->mSecurity:I

    if-ne v0, v5, :cond_6

    iget-object v0, p0, Lcom/android/settings/wifi/WifiDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    if-eqz v0, :cond_7

    :cond_6
    iget v0, p0, Lcom/android/settings/wifi/WifiDialog;->mSecurity:I

    if-ne v0, v6, :cond_8

    iget-object v0, p0, Lcom/android/settings/wifi/WifiDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    const/16 v1, 0x8

    if-ge v0, v1, :cond_8

    .line 467
    :cond_7
    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/WifiDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 468
    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/WifiDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 470
    :cond_8
    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/WifiDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/WifiDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 472
    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/WifiDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 473
    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/WifiDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter "editable"

    .prologue
    .line 495
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiDialog;->validate()V

    .line 496
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 492
    return-void
.end method

.method getConfig()Landroid/net/wifi/WifiConfiguration;
    .locals 10

    .prologue
    const/4 v9, -0x1

    const/4 v8, 0x1

    const/16 v7, 0x22

    const/4 v5, 0x0

    const-string v6, ""

    .line 170
    const-string v3, "WifiDialog"

    const-string v4, "getConfig()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    iget-object v3, p0, Lcom/android/settings/wifi/WifiDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/settings/wifi/WifiDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v3, v3, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    if-eq v3, v9, :cond_0

    iget-boolean v3, p0, Lcom/android/settings/wifi/WifiDialog;->edit:Z

    if-nez v3, :cond_0

    .line 172
    const/4 v3, 0x0

    .line 255
    :goto_0
    return-object v3

    .line 175
    :cond_0
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 177
    .local v0, config:Landroid/net/wifi/WifiConfiguration;
    iget-object v3, p0, Lcom/android/settings/wifi/WifiDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-nez v3, :cond_1

    .line 178
    iget-object v3, p0, Lcom/android/settings/wifi/WifiDialog;->mSsid:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/wifi/AccessPoint;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 181
    iput-boolean v8, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 193
    :goto_1
    iget v3, p0, Lcom/android/settings/wifi/WifiDialog;->mSecurity:I

    packed-switch v3, :pswitch_data_0

    .line 255
    const/4 v3, 0x0

    goto :goto_0

    .line 182
    :cond_1
    iget-object v3, p0, Lcom/android/settings/wifi/WifiDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v3, v3, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    if-ne v3, v9, :cond_2

    .line 183
    iget-object v3, p0, Lcom/android/settings/wifi/WifiDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget-object v3, v3, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/settings/wifi/AccessPoint;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    goto :goto_1

    .line 186
    :cond_2
    iget-boolean v3, p0, Lcom/android/settings/wifi/WifiDialog;->edit:Z

    if-eqz v3, :cond_3

    .line 187
    iget-object v3, p0, Lcom/android/settings/wifi/WifiDialog;->mSsid:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/wifi/AccessPoint;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 190
    :cond_3
    iget-object v3, p0, Lcom/android/settings/wifi/WifiDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v3, v3, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    iput v3, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    goto :goto_1

    .line 195
    :pswitch_0
    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v3, v5}, Ljava/util/BitSet;->set(I)V

    move-object v3, v0

    .line 196
    goto :goto_0

    .line 199
    :pswitch_1
    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v3, v5}, Ljava/util/BitSet;->set(I)V

    .line 200
    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v3, v5}, Ljava/util/BitSet;->set(I)V

    .line 201
    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v3, v8}, Ljava/util/BitSet;->set(I)V

    .line 202
    iget-object v3, p0, Lcom/android/settings/wifi/WifiDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->length()I

    move-result v3

    if-eqz v3, :cond_5

    .line 203
    iget-object v3, p0, Lcom/android/settings/wifi/WifiDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/android/settings/wifi/WifiDialog;->ConnectedPassword:Ljava/lang/String;

    .line 204
    iget-object v3, p0, Lcom/android/settings/wifi/WifiDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->length()I

    move-result v1

    .line 205
    .local v1, length:I
    iget-object v3, p0, Lcom/android/settings/wifi/WifiDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 207
    .local v2, password:Ljava/lang/String;
    const/16 v3, 0xa

    if-eq v1, v3, :cond_4

    const/16 v3, 0x1a

    if-eq v1, v3, :cond_4

    const/16 v3, 0x3a

    if-ne v1, v3, :cond_6

    :cond_4
    const-string v3, "[0-9A-Fa-f]*"

    invoke-virtual {v2, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 209
    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aput-object v2, v3, v5

    .end local v1           #length:I
    .end local v2           #password:Ljava/lang/String;
    :cond_5
    :goto_2
    move-object v3, v0

    .line 214
    goto/16 :goto_0

    .line 211
    .restart local v1       #length:I
    .restart local v2       #password:Ljava/lang/String;
    :cond_6
    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    goto :goto_2

    .line 217
    .end local v1           #length:I
    .end local v2           #password:Ljava/lang/String;
    :pswitch_2
    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v3, v8}, Ljava/util/BitSet;->set(I)V

    .line 218
    iget-object v3, p0, Lcom/android/settings/wifi/WifiDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->length()I

    move-result v3

    if-eqz v3, :cond_7

    .line 219
    iget-object v3, p0, Lcom/android/settings/wifi/WifiDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/android/settings/wifi/WifiDialog;->ConnectedPassword:Ljava/lang/String;

    .line 220
    iget-object v3, p0, Lcom/android/settings/wifi/WifiDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 221
    .restart local v2       #password:Ljava/lang/String;
    const-string v3, "[0-9A-Fa-f]{64}"

    invoke-virtual {v2, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 222
    iput-object v2, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .end local v2           #password:Ljava/lang/String;
    :cond_7
    :goto_3
    move-object v3, v0

    .line 227
    goto/16 :goto_0

    .line 224
    .restart local v2       #password:Ljava/lang/String;
    :cond_8
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto :goto_3

    .line 230
    .end local v2           #password:Ljava/lang/String;
    :pswitch_3
    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Ljava/util/BitSet;->set(I)V

    .line 231
    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Ljava/util/BitSet;->set(I)V

    .line 232
    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->eap:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiDialog;->mEapMethod:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    .line 234
    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->phase2:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    iget-object v4, p0, Lcom/android/settings/wifi/WifiDialog;->mPhase2:Landroid/widget/Spinner;

    invoke-virtual {v4}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v4

    if-nez v4, :cond_a

    const-string v4, ""

    move-object v4, v6

    :goto_4
    invoke-virtual {v3, v4}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    .line 236
    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->ca_cert:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiDialog;->mEapCaCert:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v3

    if-nez v3, :cond_b

    const-string v3, ""

    move-object v3, v6

    :goto_5
    invoke-virtual {v4, v3}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    .line 239
    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->client_cert:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiDialog;->mEapUserCert:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v3

    if-nez v3, :cond_c

    const-string v3, ""

    move-object v3, v6

    :goto_6
    invoke-virtual {v4, v3}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    .line 242
    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->private_key:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiDialog;->mEapUserCert:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v3

    if-nez v3, :cond_d

    const-string v3, ""

    move-object v3, v6

    :goto_7
    invoke-virtual {v4, v3}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    .line 245
    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->identity:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    iget-object v4, p0, Lcom/android/settings/wifi/WifiDialog;->mEapIdentity:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->length()I

    move-result v4

    if-nez v4, :cond_e

    const-string v4, ""

    move-object v4, v6

    :goto_8
    invoke-virtual {v3, v4}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    .line 247
    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->anonymous_identity:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    iget-object v4, p0, Lcom/android/settings/wifi/WifiDialog;->mEapAnonymous:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->length()I

    move-result v4

    if-nez v4, :cond_f

    const-string v4, ""

    move-object v4, v6

    :goto_9
    invoke-virtual {v3, v4}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    .line 249
    iget-object v3, p0, Lcom/android/settings/wifi/WifiDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->length()I

    move-result v3

    if-eqz v3, :cond_9

    .line 250
    iget-object v3, p0, Lcom/android/settings/wifi/WifiDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/android/settings/wifi/WifiDialog;->ConnectedPassword:Ljava/lang/String;

    .line 251
    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->password:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    iget-object v4, p0, Lcom/android/settings/wifi/WifiDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    :cond_9
    move-object v3, v0

    .line 253
    goto/16 :goto_0

    .line 234
    :cond_a
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "auth="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/wifi/WifiDialog;->mPhase2:Landroid/widget/Spinner;

    invoke-virtual {v5}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_4

    .line 236
    :cond_b
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "keystore://CACERT_"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v3, p0, Lcom/android/settings/wifi/WifiDialog;->mEapCaCert:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_5

    .line 239
    :cond_c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "keystore://USRCERT_"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v3, p0, Lcom/android/settings/wifi/WifiDialog;->mEapUserCert:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_6

    .line 242
    :cond_d
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "keystore://USRPKEY_"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v3, p0, Lcom/android/settings/wifi/WifiDialog;->mEapUserCert:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_7

    .line 245
    :cond_e
    iget-object v4, p0, Lcom/android/settings/wifi/WifiDialog;->mEapIdentity:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_8

    .line 247
    :cond_f
    iget-object v4, p0, Lcom/android/settings/wifi/WifiDialog;->mEapAnonymous:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_9

    .line 193
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 631
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "on back pressed"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 632
    const/4 v0, 0x0

    sput v0, Lcom/android/settings/wifi/WifiSettings;->edit_network:I

    .line 633
    invoke-super {p0}, Landroid/app/AlertDialog;->onBackPressed()V

    .line 634
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 480
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDialog;->mPassword:Landroid/widget/EditText;

    check-cast p1, Landroid/widget/CheckBox;

    .end local p1
    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x90

    :goto_0
    or-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 484
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDialog;->mPassword:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 486
    return-void

    .line 480
    :cond_0
    const/16 v1, 0x80

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 13
    .parameter "savedInstanceState"

    .prologue
    .line 260
    const-string v9, "WifiDialog"

    const-string v10, "onCreate()"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v9

    const v10, 0x7f030072

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings/wifi/WifiDialog;->mView:Landroid/view/View;

    .line 262
    iget-object v9, p0, Lcom/android/settings/wifi/WifiDialog;->mView:Landroid/view/View;

    invoke-virtual {p0, v9}, Lcom/android/settings/wifi/WifiDialog;->setView(Landroid/view/View;)V

    .line 263
    const/4 v9, 0x1

    invoke-virtual {p0, v9}, Lcom/android/settings/wifi/WifiDialog;->setInverseBackgroundForced(Z)V

    .line 265
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 266
    .local v1, context:Landroid/content/Context;
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 267
    .local v5, resources:Landroid/content/res/Resources;
    iget-object v9, p0, Lcom/android/settings/wifi/WifiDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-nez v9, :cond_8

    .line 268
    const-string v9, "WifiDialog"

    const-string v10, "onCreate: mAccessPoint == null"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    const v9, 0x7f09018e

    invoke-virtual {p0, v9}, Lcom/android/settings/wifi/WifiDialog;->setTitle(I)V

    .line 270
    iget-object v9, p0, Lcom/android/settings/wifi/WifiDialog;->mView:Landroid/view/View;

    const v10, 0x7f0b012b

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    .line 271
    iget-object v9, p0, Lcom/android/settings/wifi/WifiDialog;->mView:Landroid/view/View;

    const v10, 0x7f0b012c

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiDialog;->mSsid:Landroid/widget/TextView;

    .line 272
    iget-object v9, p0, Lcom/android/settings/wifi/WifiDialog;->mSsid:Landroid/widget/TextView;

    invoke-virtual {v9, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 273
    iget-object v9, p0, Lcom/android/settings/wifi/WifiDialog;->mView:Landroid/view/View;

    const v10, 0x7f0b0131

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    invoke-virtual {v0, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 274
    const/4 v9, -0x1

    const v10, 0x7f0901b6

    invoke-virtual {v1, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    iget-object v11, p0, Lcom/android/settings/wifi/WifiDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v9, v10, v11}, Lcom/android/settings/wifi/WifiDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 275
    const/4 v9, -0x3

    const v10, 0x7f0901b8

    invoke-virtual {v1, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    iget-object v11, p0, Lcom/android/settings/wifi/WifiDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v9, v10, v11}, Lcom/android/settings/wifi/WifiDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 277
    const-string v9, "WifiDialog"

    const-string v10, "Uzzal 1"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiDialog;->getWindow()Landroid/view/Window;

    move-result-object v9

    const/16 v10, 0x14

    invoke-virtual {v9, v10}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 385
    :cond_0
    :goto_0
    iget-object v9, p0, Lcom/android/settings/wifi/WifiDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v9, :cond_13

    iget-object v9, p0, Lcom/android/settings/wifi/WifiDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v9}, Lcom/android/settings/wifi/AccessPoint;->getState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v9

    sget-object v10, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v9, v10, :cond_13

    iget-boolean v9, p0, Lcom/android/settings/wifi/WifiDialog;->edit:Z

    if-nez v9, :cond_13

    .line 386
    const/4 v9, -0x2

    const v10, 0x7f090023

    invoke-virtual {v1, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    iget-object v11, p0, Lcom/android/settings/wifi/WifiDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v9, v10, v11}, Lcom/android/settings/wifi/WifiDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 387
    const-string v9, "WifiDialog"

    const-string v10, " Uzzal ManageNetwork EDIT 1 "

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    iget-boolean v9, p0, Lcom/android/settings/wifi/WifiDialog;->details:Z

    if-eqz v9, :cond_1

    .line 389
    const/4 v9, -0x3

    const v10, 0x7f090023

    invoke-virtual {v1, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    iget-object v11, p0, Lcom/android/settings/wifi/WifiDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v9, v10, v11}, Lcom/android/settings/wifi/WifiDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 390
    const-string v9, "WifiDialog"

    const-string v10, " Uzzal CONNECTED EDIT 2 "

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    :cond_1
    iget-boolean v9, p0, Lcom/android/settings/wifi/WifiDialog;->details:Z

    if-nez v9, :cond_2

    .line 393
    const/4 v9, -0x3

    const v10, 0x7f090022

    invoke-virtual {v1, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    iget-object v11, p0, Lcom/android/settings/wifi/WifiDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v9, v10, v11}, Lcom/android/settings/wifi/WifiDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 394
    const/4 v9, 0x1

    sput-boolean v9, Lcom/android/settings/wifi/WifiSettings;->view:Z

    .line 397
    :cond_2
    const/4 v9, 0x1

    sput-boolean v9, Lcom/android/settings/wifi/WifiSettings;->edit:Z

    .line 403
    :goto_1
    iget v9, p0, Lcom/android/settings/wifi/WifiDialog;->mConnectedAPEdit:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_4

    .line 404
    const/4 v9, 0x0

    sput-boolean v9, Lcom/android/settings/wifi/WifiSettings;->edit:Z

    .line 405
    sget v9, Lcom/android/settings/wifi/WifiDialog;->Remembered:I

    if-eqz v9, :cond_3

    iget-object v9, p0, Lcom/android/settings/wifi/WifiDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v9}, Lcom/android/settings/wifi/AccessPoint;->getState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v9

    sget-object v10, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-eq v9, v10, :cond_3

    .line 406
    const/4 v9, -0x1

    const v10, 0x7f090023

    invoke-virtual {v1, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    iget-object v11, p0, Lcom/android/settings/wifi/WifiDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v9, v10, v11}, Lcom/android/settings/wifi/WifiDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 407
    const-string v9, "WifiDialog"

    const-string v10, " Uzzal ManageNetwork dialog EDIT 3  "

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    :cond_3
    const/4 v9, 0x1

    sput v9, Lcom/android/settings/wifi/WifiSettings;->edit_network:I

    .line 411
    sget v9, Lcom/android/settings/wifi/WifiSettings;->mManageNetworkConnected:I

    if-nez v9, :cond_14

    .line 412
    const/4 v9, -0x2

    const v10, 0x7f090032

    invoke-virtual {v1, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    iget-object v11, p0, Lcom/android/settings/wifi/WifiDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v9, v10, v11}, Lcom/android/settings/wifi/WifiDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 413
    const/4 v9, 0x1

    sput v9, Lcom/android/settings/wifi/WifiSettings;->cancel_network:I

    .line 418
    :goto_2
    const/4 v9, 0x0

    iput v9, p0, Lcom/android/settings/wifi/WifiDialog;->mConnectedAPEdit:I

    .line 421
    :cond_4
    iget-boolean v9, p0, Lcom/android/settings/wifi/WifiDialog;->manageNetwork:Z

    if-eqz v9, :cond_6

    iget-object v9, p0, Lcom/android/settings/wifi/WifiDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v9, :cond_6

    iget-object v9, p0, Lcom/android/settings/wifi/WifiDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v9}, Lcom/android/settings/wifi/AccessPoint;->getState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v9

    sget-object v10, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-eq v9, v10, :cond_6

    iget-boolean v9, p0, Lcom/android/settings/wifi/WifiDialog;->edit:Z

    if-nez v9, :cond_6

    .line 423
    const-string v9, "WifiDialog"

    const-string v10, " Uzzal ManageNetwork dialog create  "

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    sget v9, Lcom/android/settings/wifi/WifiDialog;->Remembered:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_5

    .line 425
    const/4 v9, -0x1

    const v10, 0x7f0901b6

    invoke-virtual {v1, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    iget-object v11, p0, Lcom/android/settings/wifi/WifiDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v9, v10, v11}, Lcom/android/settings/wifi/WifiDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 427
    iget-object v9, p0, Lcom/android/settings/wifi/WifiDialog;->mView:Landroid/view/View;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    .line 428
    const/4 v9, 0x0

    invoke-virtual {p0, v9}, Lcom/android/settings/wifi/WifiDialog;->setInverseBackgroundForced(Z)V

    .line 429
    iget-object v9, p0, Lcom/android/settings/wifi/WifiDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v9, v9, Lcom/android/settings/wifi/AccessPoint;->security:I

    if-nez v9, :cond_15

    .line 430
    const v9, 0x7f0905f7

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/android/settings/wifi/WifiDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget-object v12, v12, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    aput-object v12, v10, v11

    invoke-virtual {v1, v9, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/settings/wifi/WifiDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 436
    :cond_5
    :goto_3
    const/4 v9, -0x3

    const v10, 0x7f090023

    invoke-virtual {v1, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    iget-object v11, p0, Lcom/android/settings/wifi/WifiDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v9, v10, v11}, Lcom/android/settings/wifi/WifiDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 437
    const-string v9, "WifiDialog"

    const-string v10, " Uzzal ManageNetwork dialog EDIT 3  "

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    const/4 v9, -0x2

    const v10, 0x7f090012

    invoke-virtual {v1, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    iget-object v11, p0, Lcom/android/settings/wifi/WifiDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v9, v10, v11}, Lcom/android/settings/wifi/WifiDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 440
    :cond_6
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 442
    const/4 v9, -0x3

    invoke-virtual {p0, v9}, Lcom/android/settings/wifi/WifiDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v9

    if-eqz v9, :cond_7

    const/4 v9, -0x1

    invoke-virtual {p0, v9}, Lcom/android/settings/wifi/WifiDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v9

    if-eqz v9, :cond_7

    .line 443
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiDialog;->validate()V

    .line 445
    :cond_7
    return-void

    .line 284
    :cond_8
    const-string v9, "WifiDialog"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "onCreate: retry "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v11, p0, Lcom/android/settings/wifi/WifiDialog;->retry:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    iget-boolean v9, p0, Lcom/android/settings/wifi/WifiDialog;->retry:Z

    if-eqz v9, :cond_a

    .line 286
    iget-object v9, p0, Lcom/android/settings/wifi/WifiDialog;->mView:Landroid/view/View;

    const v10, 0x7f0b012c

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiDialog;->mSsid:Landroid/widget/TextView;

    .line 287
    iget-object v9, p0, Lcom/android/settings/wifi/WifiDialog;->mSsid:Landroid/widget/TextView;

    iget-object v10, p0, Lcom/android/settings/wifi/WifiDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget-object v10, v10, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 288
    iget-object v9, p0, Lcom/android/settings/wifi/WifiDialog;->mSsid:Landroid/widget/TextView;

    invoke-virtual {v9, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 289
    iget-object v9, p0, Lcom/android/settings/wifi/WifiDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget-object v9, v9, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {p0, v9}, Lcom/android/settings/wifi/WifiDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 290
    iget-object v9, p0, Lcom/android/settings/wifi/WifiDialog;->mView:Landroid/view/View;

    const v10, 0x7f0b012a

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 291
    .local v2, group:Landroid/view/ViewGroup;
    const v9, 0x7f050013

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v8

    .line 292
    .local v8, type:[Ljava/lang/String;
    const v9, 0x7f0901a1

    iget-object v10, p0, Lcom/android/settings/wifi/WifiDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v10, v10, Lcom/android/settings/wifi/AccessPoint;->security:I

    aget-object v10, v8, v10

    invoke-direct {p0, v2, v9, v10}, Lcom/android/settings/wifi/WifiDialog;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 293
    iget-object v9, p0, Lcom/android/settings/wifi/WifiDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v9}, Lcom/android/settings/wifi/AccessPoint;->getLevel()I

    move-result v4

    .line 294
    .local v4, level:I
    const/4 v9, -0x1

    if-eq v4, v9, :cond_9

    .line 295
    const v9, 0x7f050018

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    .line 296
    .local v6, signal:[Ljava/lang/String;
    const v9, 0x7f0901a2

    aget-object v10, v6, v4

    invoke-direct {p0, v2, v9, v10}, Lcom/android/settings/wifi/WifiDialog;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 298
    .end local v6           #signal:[Ljava/lang/String;
    :cond_9
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiDialog;->showSecurityFields()V

    .line 299
    iget-object v9, p0, Lcom/android/settings/wifi/WifiDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v9}, Lcom/android/settings/wifi/AccessPoint;->getState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v7

    .line 301
    .local v7, state:Landroid/net/NetworkInfo$DetailedState;
    const/4 v9, -0x1

    const v10, 0x7f0901b6

    invoke-virtual {v1, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    iget-object v11, p0, Lcom/android/settings/wifi/WifiDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v9, v10, v11}, Lcom/android/settings/wifi/WifiDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    goto/16 :goto_0

    .line 305
    .end local v2           #group:Landroid/view/ViewGroup;
    .end local v4           #level:I
    .end local v7           #state:Landroid/net/NetworkInfo$DetailedState;
    .end local v8           #type:[Ljava/lang/String;
    :cond_a
    iget-object v9, p0, Lcom/android/settings/wifi/WifiDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget-object v9, v9, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {p0, v9}, Lcom/android/settings/wifi/WifiDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 306
    iget-object v9, p0, Lcom/android/settings/wifi/WifiDialog;->mView:Landroid/view/View;

    const v10, 0x7f0b012a

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 307
    .restart local v2       #group:Landroid/view/ViewGroup;
    const-string v9, "WifiDialog"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "onCreate: details "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v11, p0, Lcom/android/settings/wifi/WifiDialog;->details:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    iget-object v9, p0, Lcom/android/settings/wifi/WifiDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v9}, Lcom/android/settings/wifi/AccessPoint;->getState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v7

    .line 309
    .restart local v7       #state:Landroid/net/NetworkInfo$DetailedState;
    if-eqz v7, :cond_b

    .line 310
    const v9, 0x7f0901a3

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiDialog;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10, v7}, Lcom/android/settings/wifi/Summary;->get(Landroid/content/Context;Landroid/net/NetworkInfo$DetailedState;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v2, v9, v10}, Lcom/android/settings/wifi/WifiDialog;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 312
    :cond_b
    const v9, 0x7f050013

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v8

    .line 313
    .restart local v8       #type:[Ljava/lang/String;
    const v9, 0x7f0901a1

    iget-object v10, p0, Lcom/android/settings/wifi/WifiDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v10, v10, Lcom/android/settings/wifi/AccessPoint;->security:I

    aget-object v10, v8, v10

    invoke-direct {p0, v2, v9, v10}, Lcom/android/settings/wifi/WifiDialog;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 314
    iget-object v9, p0, Lcom/android/settings/wifi/WifiDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v9}, Lcom/android/settings/wifi/AccessPoint;->getLevel()I

    move-result v4

    .line 316
    .restart local v4       #level:I
    const/4 v9, -0x1

    if-eq v4, v9, :cond_c

    .line 317
    const v9, 0x7f050018

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    .line 318
    .restart local v6       #signal:[Ljava/lang/String;
    const v9, 0x7f0901a2

    aget-object v10, v6, v4

    invoke-direct {p0, v2, v9, v10}, Lcom/android/settings/wifi/WifiDialog;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 321
    .end local v6           #signal:[Ljava/lang/String;
    :cond_c
    iget-object v9, p0, Lcom/android/settings/wifi/WifiDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v9}, Lcom/android/settings/wifi/AccessPoint;->getInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v3

    .line 323
    .local v3, info:Landroid/net/wifi/WifiInfo;
    if-eqz v3, :cond_d

    .line 324
    const v9, 0x7f0901a4

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getLinkSpeed()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "Mbps"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v2, v9, v10}, Lcom/android/settings/wifi/WifiDialog;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 326
    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v0

    .line 327
    .local v0, address:I
    if-eqz v0, :cond_d

    .line 328
    const v9, 0x7f0901a5

    invoke-static {v0}, Landroid/text/format/Formatter;->formatIpAddress(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v2, v9, v10}, Lcom/android/settings/wifi/WifiDialog;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 331
    .end local v0           #address:I
    :cond_d
    iget-boolean v9, p0, Lcom/android/settings/wifi/WifiDialog;->details:Z

    if-eqz v9, :cond_e

    .line 332
    const/4 v9, 0x0

    invoke-virtual {v2, v9}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 336
    :cond_e
    iget-object v9, p0, Lcom/android/settings/wifi/WifiDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v9, v9, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    const/4 v10, -0x1

    if-eq v9, v10, :cond_f

    iget-boolean v9, p0, Lcom/android/settings/wifi/WifiDialog;->edit:Z

    if-eqz v9, :cond_10

    .line 337
    :cond_f
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiDialog;->showSecurityFields()V

    .line 340
    :cond_10
    iget-boolean v9, p0, Lcom/android/settings/wifi/WifiDialog;->edit:Z

    if-eqz v9, :cond_11

    .line 341
    iget-object v9, p0, Lcom/android/settings/wifi/WifiDialog;->mView:Landroid/view/View;

    const v10, 0x7f0b012b

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    .line 342
    iget-object v9, p0, Lcom/android/settings/wifi/WifiDialog;->mView:Landroid/view/View;

    const v10, 0x7f0b012c

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiDialog;->mSsid:Landroid/widget/TextView;

    .line 343
    iget-object v9, p0, Lcom/android/settings/wifi/WifiDialog;->mSsid:Landroid/widget/TextView;

    iget-object v10, p0, Lcom/android/settings/wifi/WifiDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget-object v10, v10, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 344
    iget-object v9, p0, Lcom/android/settings/wifi/WifiDialog;->mSsid:Landroid/widget/TextView;

    invoke-virtual {v9, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 345
    iget-object v9, p0, Lcom/android/settings/wifi/WifiDialog;->mView:Landroid/view/View;

    const v10, 0x7f0b0131

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iget-object v9, p0, Lcom/android/settings/wifi/WifiDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v9, v9, Lcom/android/settings/wifi/AccessPoint;->security:I

    invoke-virtual {v0, v9}, Landroid/widget/Spinner;->setSelection(I)V

    .line 346
    iget-object v9, p0, Lcom/android/settings/wifi/WifiDialog;->mView:Landroid/view/View;

    const v10, 0x7f0b0131

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    invoke-virtual {v0, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 347
    const/4 v9, 0x0

    sput-boolean v9, Lcom/android/settings/wifi/WifiSettings;->view:Z

    .line 348
    const/4 v9, -0x1

    const v10, 0x7f0901b6

    invoke-virtual {v1, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    iget-object v11, p0, Lcom/android/settings/wifi/WifiDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v9, v10, v11}, Lcom/android/settings/wifi/WifiDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 349
    const/4 v9, -0x3

    const v10, 0x7f0901b8

    invoke-virtual {v1, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    iget-object v11, p0, Lcom/android/settings/wifi/WifiDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v9, v10, v11}, Lcom/android/settings/wifi/WifiDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 350
    const-string v9, "WifiDialog"

    const-string v10, "EDIT true connect and submit btn set "

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    iget-object v9, p0, Lcom/android/settings/wifi/WifiDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget-object v9, v9, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    sput-object v9, Lcom/android/settings/wifi/WifiDialog;->previousssid:Ljava/lang/String;

    .line 352
    const/4 v9, 0x1

    sput v9, Lcom/android/settings/wifi/WifiDialog;->bEdit:I

    goto/16 :goto_0

    .line 354
    :cond_11
    if-nez v7, :cond_12

    const/4 v9, -0x1

    if-eq v4, v9, :cond_12

    .line 356
    const/4 v9, -0x1

    const v10, 0x7f0901b6

    invoke-virtual {v1, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    iget-object v11, p0, Lcom/android/settings/wifi/WifiDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v9, v10, v11}, Lcom/android/settings/wifi/WifiDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 357
    const-string v9, "WifiDialog"

    const-string v10, "EDIT false state null set connect button "

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    iget-object v9, p0, Lcom/android/settings/wifi/WifiDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget-boolean v9, v9, Lcom/android/settings/wifi/AccessPoint;->wpsPinMode:Z

    if-eqz v9, :cond_12

    .line 362
    :cond_12
    iget-object v9, p0, Lcom/android/settings/wifi/WifiDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v9, v9, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    const/4 v10, -0x1

    if-eq v9, v10, :cond_0

    .line 369
    iget-object v9, p0, Lcom/android/settings/wifi/WifiDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v9}, Lcom/android/settings/wifi/AccessPoint;->getState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v9

    sget-object v10, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v9, v10, :cond_0

    iget-boolean v9, p0, Lcom/android/settings/wifi/WifiDialog;->manageNetwork:Z

    if-nez v9, :cond_0

    iget-boolean v9, p0, Lcom/android/settings/wifi/WifiDialog;->details:Z

    const/4 v10, 0x1

    if-eq v9, v10, :cond_0

    .line 370
    const/4 v9, -0x1

    const v10, 0x7f0901b7

    invoke-virtual {v1, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    iget-object v11, p0, Lcom/android/settings/wifi/WifiDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v9, v10, v11}, Lcom/android/settings/wifi/WifiDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 372
    const-string v9, "WifiDialog"

    const-string v10, " Uzzal DISCONNECT BUTTON  FOR CONNECTED  AP NOT FOR MANAGE DEVICE "

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 399
    .end local v2           #group:Landroid/view/ViewGroup;
    .end local v3           #info:Landroid/net/wifi/WifiInfo;
    .end local v4           #level:I
    .end local v7           #state:Landroid/net/NetworkInfo$DetailedState;
    .end local v8           #type:[Ljava/lang/String;
    :cond_13
    const/4 v9, -0x2

    const v10, 0x7f0901b9

    invoke-virtual {v1, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    iget-object v11, p0, Lcom/android/settings/wifi/WifiDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v9, v10, v11}, Lcom/android/settings/wifi/WifiDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    goto/16 :goto_1

    .line 415
    :cond_14
    const/4 v9, -0x2

    const v10, 0x7f090012

    invoke-virtual {v1, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    iget-object v11, p0, Lcom/android/settings/wifi/WifiDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v9, v10, v11}, Lcom/android/settings/wifi/WifiDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 416
    const/4 v9, 0x1

    sput v9, Lcom/android/settings/wifi/WifiSettings;->forget_network:I

    goto/16 :goto_2

    .line 432
    :cond_15
    const v9, 0x7f0905f9

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/android/settings/wifi/WifiDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget-object v12, v12, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    aput-object v12, v10, v11

    invoke-virtual {v1, v9, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/settings/wifi/WifiDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto/16 :goto_3
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .parameter "parent"
    .parameter "view"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 499
    iput p3, p0, Lcom/android/settings/wifi/WifiDialog;->mSecurity:I

    .line 500
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiDialog;->showSecurityFields()V

    .line 501
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiDialog;->validate()V

    .line 502
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .parameter "parent"

    .prologue
    .line 505
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 489
    return-void
.end method

.method public show()V
    .locals 6

    .prologue
    const/4 v5, -0x2

    const/4 v4, -0x3

    const/4 v3, -0x1

    const/high16 v2, 0x4160

    .line 614
    const-string v0, "WifiDialog"

    const-string v1, "show()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    invoke-super {p0}, Landroid/app/AlertDialog;->show()V

    .line 617
    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/WifiDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 618
    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/WifiDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Button;->setSingleLine()V

    .line 619
    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/WifiDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setTextSize(F)V

    .line 621
    :cond_0
    invoke-virtual {p0, v5}, Lcom/android/settings/wifi/WifiDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 622
    invoke-virtual {p0, v5}, Lcom/android/settings/wifi/WifiDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setTextSize(F)V

    .line 624
    :cond_1
    invoke-virtual {p0, v4}, Lcom/android/settings/wifi/WifiDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 625
    invoke-virtual {p0, v4}, Lcom/android/settings/wifi/WifiDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setTextSize(F)V

    .line 627
    :cond_2
    return-void
.end method
