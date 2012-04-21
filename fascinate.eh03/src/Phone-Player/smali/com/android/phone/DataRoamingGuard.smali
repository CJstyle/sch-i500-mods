.class public Lcom/android/phone/DataRoamingGuard;
.super Landroid/app/Activity;
.source "DataRoamingGuard.java"


# instance fields
.field cancelButton:Landroid/widget/Button;

.field cbNeverAsk:Landroid/widget/CheckBox;

.field private mCancelListener:Landroid/view/View$OnClickListener;

.field private mNeverAskListener:Landroid/view/View$OnClickListener;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mRoamListener:Landroid/view/View$OnClickListener;

.field roamButton:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 76
    new-instance v0, Lcom/android/phone/DataRoamingGuard$1;

    invoke-direct {v0, p0}, Lcom/android/phone/DataRoamingGuard$1;-><init>(Lcom/android/phone/DataRoamingGuard;)V

    iput-object v0, p0, Lcom/android/phone/DataRoamingGuard;->mNeverAskListener:Landroid/view/View$OnClickListener;

    .line 82
    new-instance v0, Lcom/android/phone/DataRoamingGuard$2;

    invoke-direct {v0, p0}, Lcom/android/phone/DataRoamingGuard$2;-><init>(Lcom/android/phone/DataRoamingGuard;)V

    iput-object v0, p0, Lcom/android/phone/DataRoamingGuard;->mCancelListener:Landroid/view/View$OnClickListener;

    .line 88
    new-instance v0, Lcom/android/phone/DataRoamingGuard$3;

    invoke-direct {v0, p0}, Lcom/android/phone/DataRoamingGuard$3;-><init>(Lcom/android/phone/DataRoamingGuard;)V

    iput-object v0, p0, Lcom/android/phone/DataRoamingGuard;->mRoamListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/DataRoamingGuard;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/phone/DataRoamingGuard;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 58
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 59
    const v1, 0x7f030013

    invoke-virtual {p0, v1}, Lcom/android/phone/DataRoamingGuard;->setContentView(I)V

    .line 60
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 61
    .local v0, app:Lcom/android/phone/PhoneApp;
    invoke-virtual {v0, p0}, Lcom/android/phone/PhoneApp;->setDataRoamingGuardInstance(Lcom/android/phone/DataRoamingGuard;)V

    .line 64
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/DataRoamingGuard;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 66
    const v1, 0x7f08004f

    invoke-virtual {p0, v1}, Lcom/android/phone/DataRoamingGuard;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/android/phone/DataRoamingGuard;->cbNeverAsk:Landroid/widget/CheckBox;

    .line 67
    iget-object v1, p0, Lcom/android/phone/DataRoamingGuard;->cbNeverAsk:Landroid/widget/CheckBox;

    iget-object v2, p0, Lcom/android/phone/DataRoamingGuard;->mNeverAskListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    const v1, 0x7f080052

    invoke-virtual {p0, v1}, Lcom/android/phone/DataRoamingGuard;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/phone/DataRoamingGuard;->cancelButton:Landroid/widget/Button;

    .line 70
    iget-object v1, p0, Lcom/android/phone/DataRoamingGuard;->cancelButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/phone/DataRoamingGuard;->mCancelListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    const v1, 0x7f080051

    invoke-virtual {p0, v1}, Lcom/android/phone/DataRoamingGuard;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/phone/DataRoamingGuard;->roamButton:Landroid/widget/Button;

    .line 73
    iget-object v1, p0, Lcom/android/phone/DataRoamingGuard;->roamButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/phone/DataRoamingGuard;->mRoamListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 116
    packed-switch p1, :pswitch_data_0

    .line 121
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 118
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/phone/DataRoamingGuard;->finish()V

    goto :goto_0

    .line 116
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method
