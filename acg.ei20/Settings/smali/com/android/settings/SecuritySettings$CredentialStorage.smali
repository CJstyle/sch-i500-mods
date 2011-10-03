.class Lcom/android/settings/SecuritySettings$CredentialStorage;
.super Ljava/lang/Object;
.source "SecuritySettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/SecuritySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CredentialStorage"
.end annotation


# static fields
.field private static final DLG_BASE:I = 0x0

.field private static final DLG_PASSWORD:I = 0x2

.field private static final DLG_RESET:I = 0x3

.field private static final DLG_UNLOCK:I = 0x1

.field private static final MINIMUM_PASSWORD_LENGTH:I = 0x8

.field private static final TYPE_KEYSTORE:I


# instance fields
.field private m3rdPartyGpsDialog:Landroid/app/AlertDialog;

.field private m3rdPartyNetworkDialog:Landroid/app/AlertDialog;

.field private mAccessCheckBox:Landroid/preference/CheckBoxPreference;

.field private mDialogId:I

.field private mExternal:Z

.field private mInstallButton:Landroid/preference/Preference;

.field private mKeyStore:Landroid/security/KeyStore;

.field private mPasswordButton:Landroid/preference/Preference;

.field private mResetButton:Landroid/preference/Preference;

.field private mShowingDialog:I

.field private mState:I

.field private mSubmit:Z

.field private mVzwDialog:Landroid/app/AlertDialog;

.field final synthetic this$0:Lcom/android/settings/SecuritySettings;


# direct methods
.method private constructor <init>(Lcom/android/settings/SecuritySettings;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 701
    iput-object p1, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->this$0:Lcom/android/settings/SecuritySettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 716
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->mKeyStore:Landroid/security/KeyStore;

    .line 718
    iput-boolean v1, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->mSubmit:Z

    .line 719
    iput-boolean v1, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->mExternal:Z

    .line 721
    iput v1, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->mShowingDialog:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/SecuritySettings;Lcom/android/settings/SecuritySettings$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 701
    invoke-direct {p0, p1}, Lcom/android/settings/SecuritySettings$CredentialStorage;-><init>(Lcom/android/settings/SecuritySettings;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/SecuritySettings$CredentialStorage;Landroid/preference/PreferenceCategory;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 701
    invoke-direct {p0, p1, p2}, Lcom/android/settings/SecuritySettings$CredentialStorage;->createPreferences(Landroid/preference/PreferenceCategory;I)V

    return-void
.end method

.method private changePassword(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .parameter "oldPassword"
    .parameter "newPassword"

    .prologue
    .line 788
    iget-object v0, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v0, p1, p2}, Landroid/security/KeyStore;->password(Ljava/lang/String;Ljava/lang/String;)Z

    .line 789
    iget-object v0, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v0}, Landroid/security/KeyStore;->getLastError()I

    move-result v0

    return v0
.end method

.method private checkError(Landroid/app/Dialog;I)Z
    .locals 6
    .parameter "dialog"
    .parameter "error"

    .prologue
    const/16 v1, 0xa

    const/4 v2, 0x3

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 956
    if-ne p2, v5, :cond_0

    .line 957
    invoke-direct {p0, v5}, Lcom/android/settings/SecuritySettings$CredentialStorage;->updatePreferences(I)V

    move v1, v4

    .line 975
    :goto_0
    return v1

    .line 960
    :cond_0
    if-ne p2, v2, :cond_1

    .line 961
    invoke-direct {p0, v2}, Lcom/android/settings/SecuritySettings$CredentialStorage;->updatePreferences(I)V

    move v1, v4

    .line 962
    goto :goto_0

    .line 964
    :cond_1
    if-ge p2, v1, :cond_2

    move v1, v4

    .line 965
    goto :goto_0

    .line 967
    :cond_2
    sub-int v1, p2, v1

    add-int/lit8 v0, v1, 0x1

    .line 968
    .local v0, count:I
    if-le v0, v2, :cond_3

    .line 969
    const v1, 0x7f090509

    new-array v2, v4, [Ljava/lang/Object;

    invoke-direct {p0, p1, v1, v2}, Lcom/android/settings/SecuritySettings$CredentialStorage;->showError(Landroid/app/Dialog;I[Ljava/lang/Object;)V

    :goto_1
    move v1, v5

    .line 975
    goto :goto_0

    .line 970
    :cond_3
    if-ne v0, v5, :cond_4

    .line 971
    const v1, 0x7f09050a

    new-array v2, v4, [Ljava/lang/Object;

    invoke-direct {p0, p1, v1, v2}, Lcom/android/settings/SecuritySettings$CredentialStorage;->showError(Landroid/app/Dialog;I[Ljava/lang/Object;)V

    goto :goto_1

    .line 973
    :cond_4
    const v1, 0x7f09050b

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-direct {p0, p1, v1, v2}, Lcom/android/settings/SecuritySettings$CredentialStorage;->showError(Landroid/app/Dialog;I[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method private checkPassword(Landroid/app/Dialog;)Z
    .locals 7
    .parameter "dialog"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 930
    const v3, 0x7f0b0034

    invoke-direct {p0, p1, v3}, Lcom/android/settings/SecuritySettings$CredentialStorage;->getText(Landroid/app/Dialog;I)Ljava/lang/String;

    move-result-object v2

    .line 931
    .local v2, oldPassword:Ljava/lang/String;
    const v3, 0x7f0b0035

    invoke-direct {p0, p1, v3}, Lcom/android/settings/SecuritySettings$CredentialStorage;->getText(Landroid/app/Dialog;I)Ljava/lang/String;

    move-result-object v1

    .line 932
    .local v1, newPassword:Ljava/lang/String;
    const v3, 0x7f0b0036

    invoke-direct {p0, p1, v3}, Lcom/android/settings/SecuritySettings$CredentialStorage;->getText(Landroid/app/Dialog;I)Ljava/lang/String;

    move-result-object v0

    .line 934
    .local v0, confirmPassword:Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_0

    .line 935
    const v3, 0x7f09050e

    new-array v4, v5, [Ljava/lang/Object;

    invoke-direct {p0, p1, v3, v4}, Lcom/android/settings/SecuritySettings$CredentialStorage;->showError(Landroid/app/Dialog;I[Ljava/lang/Object;)V

    move v3, v5

    .line 951
    :goto_0
    return v3

    .line 937
    :cond_0
    if-nez v1, :cond_2

    .line 938
    invoke-direct {p0, v2}, Lcom/android/settings/SecuritySettings$CredentialStorage;->unlock(Ljava/lang/String;)I

    move-result v3

    invoke-direct {p0, p1, v3}, Lcom/android/settings/SecuritySettings$CredentialStorage;->checkError(Landroid/app/Dialog;I)Z

    move-result v3

    if-nez v3, :cond_1

    move v3, v6

    goto :goto_0

    :cond_1
    move v3, v5

    goto :goto_0

    .line 939
    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_4

    .line 940
    :cond_3
    const v3, 0x7f09050d

    new-array v4, v5, [Ljava/lang/Object;

    invoke-direct {p0, p1, v3, v4}, Lcom/android/settings/SecuritySettings$CredentialStorage;->showError(Landroid/app/Dialog;I[Ljava/lang/Object;)V

    :goto_1
    move v3, v5

    .line 951
    goto :goto_0

    .line 941
    :cond_4
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x8

    if-ge v3, v4, :cond_5

    .line 942
    const v3, 0x7f0901da

    new-array v4, v5, [Ljava/lang/Object;

    invoke-direct {p0, p1, v3, v4}, Lcom/android/settings/SecuritySettings$CredentialStorage;->showError(Landroid/app/Dialog;I[Ljava/lang/Object;)V

    goto :goto_1

    .line 943
    :cond_5
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 944
    const v3, 0x7f09050c

    new-array v4, v5, [Ljava/lang/Object;

    invoke-direct {p0, p1, v3, v4}, Lcom/android/settings/SecuritySettings$CredentialStorage;->showError(Landroid/app/Dialog;I[Ljava/lang/Object;)V

    goto :goto_1

    .line 945
    :cond_6
    if-nez v2, :cond_7

    .line 946
    invoke-direct {p0, v1}, Lcom/android/settings/SecuritySettings$CredentialStorage;->initialize(Ljava/lang/String;)V

    move v3, v6

    .line 947
    goto :goto_0

    .line 949
    :cond_7
    invoke-direct {p0, v2, v1}, Lcom/android/settings/SecuritySettings$CredentialStorage;->changePassword(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-direct {p0, p1, v3}, Lcom/android/settings/SecuritySettings$CredentialStorage;->checkError(Landroid/app/Dialog;I)Z

    move-result v3

    if-nez v3, :cond_8

    move v3, v6

    goto :goto_0

    :cond_8
    move v3, v5

    goto :goto_0
.end method

.method private create3rdPartyGpsDialog()Landroid/app/Dialog;
    .locals 3

    .prologue
    .line 1140
    iget-object v0, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->m3rdPartyGpsDialog:Landroid/app/AlertDialog;

    if-nez v0, :cond_0

    .line 1141
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->this$0:Lcom/android/settings/SecuritySettings;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f090327

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f09001a

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->this$0:Lcom/android/settings/SecuritySettings;

    const v2, 0x7f0905fd

    invoke-virtual {v1, v2}, Lcom/android/settings/SecuritySettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->this$0:Lcom/android/settings/SecuritySettings;

    const/high16 v2, 0x104

    invoke-virtual {v1, v2}, Lcom/android/settings/SecuritySettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->m3rdPartyGpsDialog:Landroid/app/AlertDialog;

    .line 1148
    iget-object v0, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->m3rdPartyGpsDialog:Landroid/app/AlertDialog;

    new-instance v1, Lcom/android/settings/SecuritySettings$CredentialStorage$2;

    invoke-direct {v1, p0}, Lcom/android/settings/SecuritySettings$CredentialStorage$2;-><init>(Lcom/android/settings/SecuritySettings$CredentialStorage;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 1157
    :cond_0
    iget-object v0, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->m3rdPartyGpsDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method private create3rdPartyNetworkDialog()Landroid/app/Dialog;
    .locals 3

    .prologue
    .line 1161
    iget-object v0, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->m3rdPartyNetworkDialog:Landroid/app/AlertDialog;

    if-nez v0, :cond_0

    .line 1162
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->this$0:Lcom/android/settings/SecuritySettings;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f090327

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f09001d

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->this$0:Lcom/android/settings/SecuritySettings;

    const v2, 0x7f0905fd

    invoke-virtual {v1, v2}, Lcom/android/settings/SecuritySettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->this$0:Lcom/android/settings/SecuritySettings;

    const/high16 v2, 0x104

    invoke-virtual {v1, v2}, Lcom/android/settings/SecuritySettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->m3rdPartyNetworkDialog:Landroid/app/AlertDialog;

    .line 1171
    :cond_0
    iget-object v0, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->m3rdPartyNetworkDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method private createPreferences(Landroid/preference/PreferenceCategory;I)V
    .locals 2
    .parameter "category"
    .parameter "type"

    .prologue
    .line 997
    packed-switch p2, :pswitch_data_0

    .line 1025
    :goto_0
    return-void

    .line 999
    :pswitch_0
    new-instance v0, Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->this$0:Lcom/android/settings/SecuritySettings;

    invoke-direct {v0, v1}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->mAccessCheckBox:Landroid/preference/CheckBoxPreference;

    .line 1000
    iget-object v0, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->mAccessCheckBox:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f0904f8

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setTitle(I)V

    .line 1001
    iget-object v0, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->mAccessCheckBox:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f0904f9

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 1002
    iget-object v0, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->mAccessCheckBox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 1003
    iget-object v0, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->mAccessCheckBox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 1005
    new-instance v0, Landroid/preference/Preference;

    iget-object v1, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->this$0:Lcom/android/settings/SecuritySettings;

    invoke-direct {v0, v1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->mInstallButton:Landroid/preference/Preference;

    .line 1006
    iget-object v0, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->mInstallButton:Landroid/preference/Preference;

    const v1, 0x7f0904fc

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    .line 1007
    iget-object v0, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->mInstallButton:Landroid/preference/Preference;

    const v1, 0x7f0904fe

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 1008
    iget-object v0, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->mInstallButton:Landroid/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 1009
    iget-object v0, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->mInstallButton:Landroid/preference/Preference;

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 1011
    new-instance v0, Landroid/preference/Preference;

    iget-object v1, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->this$0:Lcom/android/settings/SecuritySettings;

    invoke-direct {v0, v1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->mPasswordButton:Landroid/preference/Preference;

    .line 1012
    iget-object v0, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->mPasswordButton:Landroid/preference/Preference;

    const v1, 0x7f090500

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    .line 1013
    iget-object v0, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->mPasswordButton:Landroid/preference/Preference;

    const v1, 0x7f090501

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 1014
    iget-object v0, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->mPasswordButton:Landroid/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 1015
    iget-object v0, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->mPasswordButton:Landroid/preference/Preference;

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 1017
    new-instance v0, Landroid/preference/Preference;

    iget-object v1, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->this$0:Lcom/android/settings/SecuritySettings;

    invoke-direct {v0, v1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->mResetButton:Landroid/preference/Preference;

    .line 1018
    iget-object v0, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->mResetButton:Landroid/preference/Preference;

    const v1, 0x7f090502

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    .line 1019
    iget-object v0, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->mResetButton:Landroid/preference/Preference;

    const v1, 0x7f090503

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 1020
    iget-object v0, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->mResetButton:Landroid/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 1021
    iget-object v0, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->mResetButton:Landroid/preference/Preference;

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    goto/16 :goto_0

    .line 997
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method private createVzwDialog()Landroid/app/Dialog;
    .locals 3

    .prologue
    .line 1120
    iget-object v0, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->mVzwDialog:Landroid/app/AlertDialog;

    if-nez v0, :cond_0

    .line 1121
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->this$0:Lcom/android/settings/SecuritySettings;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f090327

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090017

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->this$0:Lcom/android/settings/SecuritySettings;

    const v2, 0x7f0905fd

    invoke-virtual {v1, v2}, Lcom/android/settings/SecuritySettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->this$0:Lcom/android/settings/SecuritySettings;

    const/high16 v2, 0x104

    invoke-virtual {v1, v2}, Lcom/android/settings/SecuritySettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->mVzwDialog:Landroid/app/AlertDialog;

    .line 1128
    iget-object v0, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->mVzwDialog:Landroid/app/AlertDialog;

    new-instance v1, Lcom/android/settings/SecuritySettings$CredentialStorage$1;

    invoke-direct {v1, p0}, Lcom/android/settings/SecuritySettings$CredentialStorage$1;-><init>(Lcom/android/settings/SecuritySettings$CredentialStorage;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 1136
    :cond_0
    iget-object v0, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->mVzwDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method private getText(Landroid/app/Dialog;I)Ljava/lang/String;
    .locals 3
    .parameter "dialog"
    .parameter "viewId"

    .prologue
    .line 979
    invoke-virtual {p1, p2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 980
    .local v0, view:Landroid/widget/TextView;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_1
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private initialize(Ljava/lang/String;)V
    .locals 1
    .parameter "password"

    .prologue
    .line 768
    iget-object v0, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v0, p1}, Landroid/security/KeyStore;->password(Ljava/lang/String;)Z

    .line 769
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/settings/SecuritySettings$CredentialStorage;->updatePreferences(I)V

    .line 770
    return-void
.end method

.method private lock()V
    .locals 1

    .prologue
    .line 778
    iget-object v0, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v0}, Landroid/security/KeyStore;->lock()Z

    .line 779
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/settings/SecuritySettings$CredentialStorage;->updatePreferences(I)V

    .line 780
    return-void
.end method

.method private reset()V
    .locals 1

    .prologue
    .line 773
    iget-object v0, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v0}, Landroid/security/KeyStore;->reset()Z

    .line 774
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/android/settings/SecuritySettings$CredentialStorage;->updatePreferences(I)V

    .line 775
    return-void
.end method

.method private varargs showError(Landroid/app/Dialog;I[Ljava/lang/Object;)V
    .locals 2
    .parameter "dialog"
    .parameter "stringId"
    .parameter "formatArgs"

    .prologue
    .line 985
    const v1, 0x7f0b0032

    invoke-virtual {p1, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 986
    .local v0, view:Landroid/widget/TextView;
    if-eqz v0, :cond_1

    .line 987
    if-eqz p3, :cond_0

    array-length v1, p3

    if-nez v1, :cond_2

    .line 988
    :cond_0
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(I)V

    .line 992
    :goto_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 994
    :cond_1
    return-void

    .line 990
    :cond_2
    invoke-virtual {p1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private showPasswordDialog()V
    .locals 7

    .prologue
    const v6, 0x7f0b0034

    const/4 v5, 0x0

    .line 1076
    iget-object v2, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->this$0:Lcom/android/settings/SecuritySettings;

    const v3, 0x7f030018

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 1079
    .local v1, view:Landroid/view/View;
    iget v2, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->mState:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 1080
    const v2, 0x7f0b0031

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1086
    :goto_0
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->this$0:Lcom/android/settings/SecuritySettings;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f090500

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x104000a

    invoke-virtual {v2, v3, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/high16 v3, 0x104

    invoke-virtual {v2, v3, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1092
    .local v0, dialog:Landroid/app/Dialog;
    invoke-virtual {v0, p0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1095
    iget-object v2, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->this$0:Lcom/android/settings/SecuritySettings;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/android/settings/SecuritySettings;->access$802(Lcom/android/settings/SecuritySettings;Z)Z

    .line 1096
    iget-object v2, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->this$0:Lcom/android/settings/SecuritySettings;

    iget-object v3, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v3}, Landroid/security/KeyStore;->test()I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/settings/SecuritySettings;->access$902(Lcom/android/settings/SecuritySettings;I)I

    .line 1097
    iget-object v3, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->this$0:Lcom/android/settings/SecuritySettings;

    const v2, 0x7f0b0035

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    invoke-static {v3, v2}, Lcom/android/settings/SecuritySettings;->access$1002(Lcom/android/settings/SecuritySettings;Landroid/widget/EditText;)Landroid/widget/EditText;

    .line 1098
    iget-object v3, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->this$0:Lcom/android/settings/SecuritySettings;

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    invoke-static {v3, v2}, Lcom/android/settings/SecuritySettings;->access$1102(Lcom/android/settings/SecuritySettings;Landroid/widget/EditText;)Landroid/widget/EditText;

    .line 1101
    const/4 v2, 0x2

    iput v2, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->mShowingDialog:I

    .line 1103
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x25

    invoke-virtual {v2, v3}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 1106
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 1107
    return-void

    .line 1082
    .end local v0           #dialog:Landroid/app/Dialog;
    :cond_0
    const v2, 0x7f0b0033

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1083
    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private showResetDialog()V
    .locals 3

    .prologue
    .line 1110
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->mShowingDialog:I

    .line 1111
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->this$0:Lcom/android/settings/SecuritySettings;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x1040014

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090504

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->this$0:Lcom/android/settings/SecuritySettings;

    const v2, 0x104000a

    invoke-virtual {v1, v2}, Lcom/android/settings/SecuritySettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->this$0:Lcom/android/settings/SecuritySettings;

    const/high16 v2, 0x104

    invoke-virtual {v1, v2}, Lcom/android/settings/SecuritySettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 1118
    return-void
.end method

.method private showUnlockDialog()V
    .locals 5

    .prologue
    .line 1052
    iget-object v2, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->this$0:Lcom/android/settings/SecuritySettings;

    const v3, 0x7f030019

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 1056
    .local v1, view:Landroid/view/View;
    iget-boolean v2, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->mExternal:Z

    if-eqz v2, :cond_0

    .line 1057
    const v2, 0x7f0b0031

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1060
    :cond_0
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->this$0:Lcom/android/settings/SecuritySettings;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0904fa

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x104000a

    invoke-virtual {v2, v3, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/high16 v3, 0x104

    invoke-virtual {v2, v3, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1066
    .local v0, dialog:Landroid/app/Dialog;
    invoke-virtual {v0, p0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1067
    const/4 v2, 0x1

    iput v2, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->mShowingDialog:I

    .line 1069
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x25

    invoke-virtual {v2, v3}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 1072
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 1073
    return-void
.end method

.method private unlock(Ljava/lang/String;)I
    .locals 1
    .parameter "password"

    .prologue
    .line 783
    iget-object v0, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v0, p1}, Landroid/security/KeyStore;->unlock(Ljava/lang/String;)Z

    .line 784
    iget-object v0, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v0}, Landroid/security/KeyStore;->getLastError()I

    move-result v0

    return v0
.end method

.method private updatePreferences(I)V
    .locals 5
    .parameter "state"

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1028
    iget-object v0, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->mAccessCheckBox:Landroid/preference/CheckBoxPreference;

    if-ne p1, v3, :cond_0

    move v1, v3

    :goto_0
    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1030
    iget-object v0, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->mResetButton:Landroid/preference/Preference;

    if-eq p1, v4, :cond_1

    move v1, v3

    :goto_1
    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 1031
    iget-object v0, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->mAccessCheckBox:Landroid/preference/CheckBoxPreference;

    if-eq p1, v4, :cond_2

    move v1, v3

    :goto_2
    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 1036
    iget v0, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->mState:I

    if-ne v0, p1, :cond_3

    .line 1049
    :goto_3
    return-void

    :cond_0
    move v1, v2

    .line 1028
    goto :goto_0

    :cond_1
    move v1, v2

    .line 1030
    goto :goto_1

    :cond_2
    move v1, v2

    .line 1031
    goto :goto_2

    .line 1038
    :cond_3
    if-ne p1, v3, :cond_5

    .line 1039
    iget-object v0, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->this$0:Lcom/android/settings/SecuritySettings;

    const v1, 0x7f090510

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1048
    :cond_4
    :goto_4
    iput p1, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->mState:I

    goto :goto_3

    .line 1041
    :cond_5
    if-ne p1, v4, :cond_6

    .line 1042
    iget-object v0, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->this$0:Lcom/android/settings/SecuritySettings;

    const v1, 0x7f09050f

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_4

    .line 1044
    :cond_6
    const/4 v0, 0x2

    if-ne p1, v0, :cond_4

    .line 1045
    iget-object v0, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->this$0:Lcom/android/settings/SecuritySettings;

    const v1, 0x7f090511

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_4
.end method


# virtual methods
.method createDialog(I)Landroid/app/Dialog;
    .locals 1
    .parameter "id"

    .prologue
    .line 750
    iput p1, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->mDialogId:I

    .line 764
    const/4 v0, 0x0

    return-object v0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 8
    .parameter "dialog"
    .parameter "button"

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v3, -0x1

    const/4 v4, 0x0

    const-string v7, "gps"

    .line 873
    iget-object v2, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->m3rdPartyGpsDialog:Landroid/app/AlertDialog;

    if-ne p1, v2, :cond_2

    .line 874
    iget-object v2, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->this$0:Lcom/android/settings/SecuritySettings;

    invoke-static {v2}, Lcom/android/settings/SecuritySettings;->access$500(Lcom/android/settings/SecuritySettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v2

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    .line 875
    .local v0, checked:Z
    if-ne p2, v3, :cond_1

    .line 876
    iget-object v2, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->this$0:Lcom/android/settings/SecuritySettings;

    invoke-static {v2, v5}, Lcom/android/settings/SecuritySettings;->access$602(Lcom/android/settings/SecuritySettings;I)I

    .line 877
    iget-object v2, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->this$0:Lcom/android/settings/SecuritySettings;

    invoke-virtual {v2}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "gps"

    invoke-static {v2, v7, v0}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 879
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.GPS_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 880
    .local v1, i:Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->this$0:Lcom/android/settings/SecuritySettings;

    invoke-virtual {v2, v1}, Lcom/android/settings/SecuritySettings;->sendBroadcast(Landroid/content/Intent;)V

    .line 911
    .end local v0           #checked:Z
    .end local v1           #i:Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 884
    .restart local v0       #checked:Z
    :cond_1
    iget-object v2, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->this$0:Lcom/android/settings/SecuritySettings;

    invoke-static {v2, v6}, Lcom/android/settings/SecuritySettings;->access$602(Lcom/android/settings/SecuritySettings;I)I

    .line 885
    iget-object v2, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->this$0:Lcom/android/settings/SecuritySettings;

    invoke-virtual {v2}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "gps"

    invoke-static {v2, v7, v4}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 886
    iget-object v2, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->this$0:Lcom/android/settings/SecuritySettings;

    invoke-static {v2}, Lcom/android/settings/SecuritySettings;->access$500(Lcom/android/settings/SecuritySettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_0

    .line 889
    .end local v0           #checked:Z
    :cond_2
    iget-object v2, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->m3rdPartyNetworkDialog:Landroid/app/AlertDialog;

    if-ne p1, v2, :cond_4

    .line 890
    iget-object v2, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->this$0:Lcom/android/settings/SecuritySettings;

    invoke-static {v2}, Lcom/android/settings/SecuritySettings;->access$700(Lcom/android/settings/SecuritySettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v2

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    .line 891
    .restart local v0       #checked:Z
    if-ne p2, v3, :cond_3

    .line 892
    iget-object v2, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->this$0:Lcom/android/settings/SecuritySettings;

    invoke-static {v2, v5}, Lcom/android/settings/SecuritySettings;->access$602(Lcom/android/settings/SecuritySettings;I)I

    .line 893
    iget-object v2, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->this$0:Lcom/android/settings/SecuritySettings;

    invoke-virtual {v2}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "network"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    goto :goto_0

    .line 896
    :cond_3
    iget-object v2, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->this$0:Lcom/android/settings/SecuritySettings;

    invoke-static {v2, v6}, Lcom/android/settings/SecuritySettings;->access$602(Lcom/android/settings/SecuritySettings;I)I

    .line 897
    iget-object v2, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->this$0:Lcom/android/settings/SecuritySettings;

    invoke-virtual {v2}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "network"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 898
    iget-object v2, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->this$0:Lcom/android/settings/SecuritySettings;

    invoke-static {v2}, Lcom/android/settings/SecuritySettings;->access$700(Lcom/android/settings/SecuritySettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_0

    .line 903
    .end local v0           #checked:Z
    :cond_4
    if-ne p2, v3, :cond_5

    move v2, v5

    :goto_1
    iput-boolean v2, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->mSubmit:Z

    .line 904
    const/4 v2, -0x3

    if-ne p2, v2, :cond_0

    .line 905
    invoke-direct {p0}, Lcom/android/settings/SecuritySettings$CredentialStorage;->reset()V

    goto :goto_0

    :cond_5
    move v2, v4

    .line 903
    goto :goto_1
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3
    .parameter "dialog"

    .prologue
    .line 914
    iget-boolean v1, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->mSubmit:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->this$0:Lcom/android/settings/SecuritySettings;

    invoke-virtual {v1}, Lcom/android/settings/SecuritySettings;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_1

    .line 915
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->mSubmit:Z

    .line 916
    move-object v0, p1

    check-cast v0, Landroid/app/Dialog;

    move-object v1, v0

    invoke-direct {p0, v1}, Lcom/android/settings/SecuritySettings$CredentialStorage;->checkPassword(Landroid/app/Dialog;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 917
    check-cast p1, Landroid/app/Dialog;

    .end local p1
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 926
    :cond_0
    :goto_0
    return-void

    .line 921
    .restart local p1
    :cond_1
    iget-object v1, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->this$0:Lcom/android/settings/SecuritySettings;

    iget v2, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->mDialogId:I

    invoke-virtual {v1, v2}, Lcom/android/settings/SecuritySettings;->removeDialog(I)V

    .line 922
    iget v1, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->mState:I

    invoke-direct {p0, v1}, Lcom/android/settings/SecuritySettings$CredentialStorage;->updatePreferences(I)V

    .line 923
    iget-boolean v1, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->mExternal:Z

    if-eqz v1, :cond_0

    .line 924
    iget-object v1, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->this$0:Lcom/android/settings/SecuritySettings;

    invoke-virtual {v1}, Lcom/android/settings/SecuritySettings;->finish()V

    goto :goto_0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 2
    .parameter "preference"
    .parameter "value"

    .prologue
    const/4 v1, 0x1

    .line 793
    iget-object v0, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->mAccessCheckBox:Landroid/preference/CheckBoxPreference;

    if-ne p1, v0, :cond_1

    .line 794
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 795
    invoke-direct {p0}, Lcom/android/settings/SecuritySettings$CredentialStorage;->showUnlockDialog()V

    :goto_0
    move v0, v1

    .line 801
    :goto_1
    return v0

    .line 797
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/SecuritySettings$CredentialStorage;->lock()V

    goto :goto_0

    .restart local p2
    :cond_1
    move v0, v1

    .line 801
    goto :goto_1
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 2
    .parameter "preference"

    .prologue
    .line 805
    iget-object v0, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->mInstallButton:Landroid/preference/Preference;

    if-ne p1, v0, :cond_0

    .line 806
    invoke-static {}, Landroid/security/Credentials;->getInstance()Landroid/security/Credentials;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->this$0:Lcom/android/settings/SecuritySettings;

    invoke-virtual {v0, v1}, Landroid/security/Credentials;->installFromSdCard(Landroid/content/Context;)V

    .line 814
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0

    .line 807
    :cond_0
    iget-object v0, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->mPasswordButton:Landroid/preference/Preference;

    if-ne p1, v0, :cond_1

    .line 808
    invoke-direct {p0}, Lcom/android/settings/SecuritySettings$CredentialStorage;->showPasswordDialog()V

    goto :goto_0

    .line 809
    :cond_1
    iget-object v0, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->mResetButton:Landroid/preference/Preference;

    if-ne p1, v0, :cond_2

    .line 810
    invoke-direct {p0}, Lcom/android/settings/SecuritySettings$CredentialStorage;->showResetDialog()V

    goto :goto_0

    .line 812
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method resume()V
    .locals 3

    .prologue
    .line 733
    iget-object v1, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v1}, Landroid/security/KeyStore;->test()I

    move-result v1

    iput v1, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->mState:I

    .line 734
    iget v1, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->mState:I

    invoke-direct {p0, v1}, Lcom/android/settings/SecuritySettings$CredentialStorage;->updatePreferences(I)V

    .line 736
    iget-object v1, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->this$0:Lcom/android/settings/SecuritySettings;

    invoke-virtual {v1}, Lcom/android/settings/SecuritySettings;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 737
    .local v0, intent:Landroid/content/Intent;
    iget-boolean v1, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->mExternal:Z

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    const-string v1, "android.credentials.UNLOCK"

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 739
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->mExternal:Z

    .line 740
    iget v1, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->mState:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 741
    invoke-direct {p0}, Lcom/android/settings/SecuritySettings$CredentialStorage;->showPasswordDialog()V

    .line 748
    :cond_0
    :goto_0
    return-void

    .line 742
    :cond_1
    iget v1, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->mState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 743
    invoke-direct {p0}, Lcom/android/settings/SecuritySettings$CredentialStorage;->showUnlockDialog()V

    goto :goto_0

    .line 745
    :cond_2
    iget-object v1, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->this$0:Lcom/android/settings/SecuritySettings;

    invoke-virtual {v1}, Lcom/android/settings/SecuritySettings;->finish()V

    goto :goto_0
.end method
