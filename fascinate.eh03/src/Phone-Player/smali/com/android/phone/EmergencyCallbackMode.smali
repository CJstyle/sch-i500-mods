.class public Lcom/android/phone/EmergencyCallbackMode;
.super Landroid/app/Activity;
.source "EmergencyCallbackMode.java"


# instance fields
.field private final COUNTDOWN_INTERVAL:I

.field private final MILLIS_IN_FUTURE:I

.field private final PROGRESS_MAX:I

.field private mCall:Landroid/widget/Button;

.field private mEmergencyCall:Landroid/widget/ImageView;

.field private mExit:Landroid/widget/Button;

.field private mHandler:Landroid/os/Handler;

.field private mHome:Landroid/widget/Button;

.field private mNotifyECBMonPause:Z

.field private mOtaActivationShouldBeShown:Z

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private onBtnClick:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 76
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/android/phone/EmergencyCallbackMode;->MILLIS_IN_FUTURE:I

    .line 77
    const/16 v0, 0x64

    iput v0, p0, Lcom/android/phone/EmergencyCallbackMode;->COUNTDOWN_INTERVAL:I

    .line 78
    const/16 v0, 0x9

    iput v0, p0, Lcom/android/phone/EmergencyCallbackMode;->PROGRESS_MAX:I

    .line 80
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/EmergencyCallbackMode;->mOtaActivationShouldBeShown:Z

    .line 81
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/EmergencyCallbackMode;->mNotifyECBMonPause:Z

    .line 200
    new-instance v0, Lcom/android/phone/EmergencyCallbackMode$1;

    invoke-direct {v0, p0}, Lcom/android/phone/EmergencyCallbackMode$1;-><init>(Lcom/android/phone/EmergencyCallbackMode;)V

    iput-object v0, p0, Lcom/android/phone/EmergencyCallbackMode;->onBtnClick:Landroid/view/View$OnClickListener;

    .line 216
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/phone/EmergencyCallbackMode;->mHandler:Landroid/os/Handler;

    .line 257
    new-instance v0, Lcom/android/phone/EmergencyCallbackMode$3;

    invoke-direct {v0, p0}, Lcom/android/phone/EmergencyCallbackMode$3;-><init>(Lcom/android/phone/EmergencyCallbackMode;)V

    iput-object v0, p0, Lcom/android/phone/EmergencyCallbackMode;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/EmergencyCallbackMode;Landroid/view/View;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/android/phone/EmergencyCallbackMode;->handleBtnPress(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/EmergencyCallbackMode;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/phone/EmergencyCallbackMode;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/phone/EmergencyCallbackMode;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/android/phone/EmergencyCallbackMode;->mOtaActivationShouldBeShown:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/phone/EmergencyCallbackMode;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    iput-boolean p1, p0, Lcom/android/phone/EmergencyCallbackMode;->mNotifyECBMonPause:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/phone/EmergencyCallbackMode;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/phone/EmergencyCallbackMode;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private goHome()V
    .locals 2

    .prologue
    .line 181
    iget-boolean v1, p0, Lcom/android/phone/EmergencyCallbackMode;->mOtaActivationShouldBeShown:Z

    if-eqz v1, :cond_0

    .line 183
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.phone.EmergencyDialer.DIAL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 184
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1080

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 186
    invoke-virtual {p0, v0}, Lcom/android/phone/EmergencyCallbackMode;->startActivity(Landroid/content/Intent;)V

    .line 198
    :goto_0
    return-void

    .line 191
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.DIAL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 192
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 194
    invoke-virtual {p0, v0}, Lcom/android/phone/EmergencyCallbackMode;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private handleBtnPress(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 219
    iget-object v0, p0, Lcom/android/phone/EmergencyCallbackMode;->mEmergencyCall:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_0

    .line 220
    invoke-direct {p0}, Lcom/android/phone/EmergencyCallbackMode;->makeEmergencyCall()V

    .line 222
    :cond_0
    iget-object v0, p0, Lcom/android/phone/EmergencyCallbackMode;->mCall:Landroid/widget/Button;

    if-ne p1, v0, :cond_1

    .line 223
    invoke-direct {p0}, Lcom/android/phone/EmergencyCallbackMode;->makeEmergencyCall()V

    .line 225
    :cond_1
    iget-object v0, p0, Lcom/android/phone/EmergencyCallbackMode;->mHome:Landroid/widget/Button;

    if-ne p1, v0, :cond_2

    .line 226
    invoke-direct {p0}, Lcom/android/phone/EmergencyCallbackMode;->goHome()V

    .line 228
    :cond_2
    iget-object v0, p0, Lcom/android/phone/EmergencyCallbackMode;->mExit:Landroid/widget/Button;

    if-ne p1, v0, :cond_3

    .line 230
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/EmergencyCallbackMode;->mNotifyECBMonPause:Z

    .line 231
    iget-object v0, p0, Lcom/android/phone/EmergencyCallbackMode;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/phone/EmergencyCallbackMode$2;

    invoke-direct {v1, p0}, Lcom/android/phone/EmergencyCallbackMode$2;-><init>(Lcom/android/phone/EmergencyCallbackMode;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 255
    :cond_3
    return-void
.end method

.method private makeEmergencyCall()V
    .locals 3

    .prologue
    .line 172
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CALL_EMERGENCY"

    const-string v2, "tel:911"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 173
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 174
    invoke-virtual {p0, v0}, Lcom/android/phone/EmergencyCallbackMode;->startActivity(Landroid/content/Intent;)V

    .line 175
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/phone/EmergencyCallbackMode;->mNotifyECBMonPause:Z

    .line 177
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 84
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 85
    const v0, 0x7f03001c

    invoke-virtual {p0, v0}, Lcom/android/phone/EmergencyCallbackMode;->setContentView(I)V

    .line 86
    const v0, 0x7f0d0027

    invoke-virtual {p0, v0}, Lcom/android/phone/EmergencyCallbackMode;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/phone/EmergencyCallbackMode;->setTitle(Ljava/lang/CharSequence;)V

    .line 89
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/EmergencyCallbackMode;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 92
    const v0, 0x7f080076

    invoke-virtual {p0, v0}, Lcom/android/phone/EmergencyCallbackMode;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/phone/EmergencyCallbackMode;->mEmergencyCall:Landroid/widget/ImageView;

    .line 93
    iget-object v0, p0, Lcom/android/phone/EmergencyCallbackMode;->mEmergencyCall:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/phone/EmergencyCallbackMode;->onBtnClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    const v0, 0x7f080079

    invoke-virtual {p0, v0}, Lcom/android/phone/EmergencyCallbackMode;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/phone/EmergencyCallbackMode;->mCall:Landroid/widget/Button;

    .line 95
    iget-object v0, p0, Lcom/android/phone/EmergencyCallbackMode;->mCall:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/phone/EmergencyCallbackMode;->onBtnClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    const v0, 0x7f08007a

    invoke-virtual {p0, v0}, Lcom/android/phone/EmergencyCallbackMode;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/phone/EmergencyCallbackMode;->mHome:Landroid/widget/Button;

    .line 97
    iget-object v0, p0, Lcom/android/phone/EmergencyCallbackMode;->mHome:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/phone/EmergencyCallbackMode;->onBtnClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    const v0, 0x7f08007b

    invoke-virtual {p0, v0}, Lcom/android/phone/EmergencyCallbackMode;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/phone/EmergencyCallbackMode;->mExit:Landroid/widget/Button;

    .line 99
    iget-object v0, p0, Lcom/android/phone/EmergencyCallbackMode;->mExit:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/phone/EmergencyCallbackMode;->onBtnClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    const-string v0, "search"

    invoke-virtual {p0, v0}, Lcom/android/phone/EmergencyCallbackMode;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SearchManager;

    invoke-virtual {v0}, Landroid/app/SearchManager;->stopSearch()V

    .line 116
    iget-object v0, p0, Lcom/android/phone/EmergencyCallbackMode;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getCdmaMin()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/OtaUtils;->needsActivation(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/phone/EmergencyCallbackMode;->mOtaActivationShouldBeShown:Z

    .line 117
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 167
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 168
    iget-object v0, p0, Lcom/android/phone/EmergencyCallbackMode;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/phone/EmergencyCallbackMode;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 169
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 122
    packed-switch p1, :pswitch_data_0

    .line 127
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 124
    :pswitch_0
    invoke-direct {p0}, Lcom/android/phone/EmergencyCallbackMode;->makeEmergencyCall()V

    goto :goto_0

    .line 122
    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 161
    iget-boolean v0, p0, Lcom/android/phone/EmergencyCallbackMode;->mNotifyECBMonPause:Z

    if-eqz v0, :cond_0

    .line 162
    invoke-static {}, Lcom/android/phone/NotificationMgr;->getDefault()Lcom/android/phone/NotificationMgr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/NotificationMgr;->notifyECBM()V

    .line 163
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 164
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 137
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 140
    const-string v1, "search"

    invoke-virtual {p0, v1}, Lcom/android/phone/EmergencyCallbackMode;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/SearchManager;

    invoke-virtual {v1}, Landroid/app/SearchManager;->stopSearch()V

    .line 143
    iput-boolean v2, p0, Lcom/android/phone/EmergencyCallbackMode;->mNotifyECBMonPause:Z

    .line 144
    invoke-static {}, Lcom/android/phone/NotificationMgr;->getDefault()Lcom/android/phone/NotificationMgr;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/NotificationMgr;->cancelEcbmNotification()V

    .line 145
    invoke-virtual {p0, v2}, Lcom/android/phone/EmergencyCallbackMode;->updateKeyguardPolicy(Z)V

    .line 148
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 149
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 153
    const-string v1, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 155
    invoke-static {}, Lcom/android/phone/NotificationMgr;->getDefault()Lcom/android/phone/NotificationMgr;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/NotificationMgr;->getStatusBarMgr()Lcom/android/phone/NotificationMgr$StatusBarMgr;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/phone/NotificationMgr$StatusBarMgr;->enableNotificationAlerts(Z)V

    .line 156
    iget-object v1, p0, Lcom/android/phone/EmergencyCallbackMode;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/phone/EmergencyCallbackMode;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 157
    return-void
.end method

.method updateKeyguardPolicy(Z)V
    .locals 3
    .parameter "dismissKeyguard"

    .prologue
    const/high16 v2, 0x40

    const/high16 v1, 0x8

    .line 207
    if-eqz p1, :cond_0

    .line 208
    invoke-virtual {p0}, Lcom/android/phone/EmergencyCallbackMode;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Window;->addFlags(I)V

    .line 209
    invoke-virtual {p0}, Lcom/android/phone/EmergencyCallbackMode;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 214
    :goto_0
    return-void

    .line 211
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/EmergencyCallbackMode;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Window;->clearFlags(I)V

    .line 212
    invoke-virtual {p0}, Lcom/android/phone/EmergencyCallbackMode;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_0
.end method
