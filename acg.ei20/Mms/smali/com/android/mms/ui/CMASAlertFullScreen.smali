.class public Lcom/android/mms/ui/CMASAlertFullScreen;
.super Landroid/app/Activity;
.source "CMASAlertFullScreen.java"


# static fields
.field private static NEW_INCOMING_CMAS_CONSTRAINT:Ljava/lang/String;

.field private static final SMS_CMAS_PROJECTION:[Ljava/lang/String;

.field private static mThreadId:Ljava/lang/Long;


# instance fields
.field private expiryTimeMillis:J

.field private mCmasType:Ljava/lang/String;

.field private mDate:Ljava/lang/String;

.field private mcmasdate:Landroid/widget/TextView;

.field private mcmastype:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 50
    const-string v0, "(type = 1 AND seen = 0 "

    sput-object v0, Lcom/android/mms/ui/CMASAlertFullScreen;->NEW_INCOMING_CMAS_CONSTRAINT:Ljava/lang/String;

    .line 55
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "thread_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "date"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "address"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/mms/ui/CMASAlertFullScreen;->SMS_CMAS_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/android/mms/ui/CMASAlertFullScreen;->mThreadId:Ljava/lang/Long;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/mms/ui/CMASAlertFullScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/android/mms/ui/CMASAlertFullScreen;->dismiss()V

    return-void
.end method

.method private dismiss()V
    .locals 0

    .prologue
    .line 130
    invoke-virtual {p0}, Lcom/android/mms/ui/CMASAlertFullScreen;->finish()V

    .line 131
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    const/4 v6, 0x1

    const-string v5, "CMASAlertFullScreen"

    .line 67
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 68
    const-string v1, "CMASAlertFullScreen"

    const-string v1, "CMASALertFullScreen onCreate()"

    invoke-static {v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    invoke-virtual {p0, v6}, Lcom/android/mms/ui/CMASAlertFullScreen;->requestWindowFeature(I)Z

    .line 72
    invoke-virtual {p0}, Lcom/android/mms/ui/CMASAlertFullScreen;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 73
    .local v0, win:Landroid/view/Window;
    const v1, 0x680001

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 86
    invoke-virtual {p0}, Lcom/android/mms/ui/CMASAlertFullScreen;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "cmasType"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/CMASAlertFullScreen;->mCmasType:Ljava/lang/String;

    .line 87
    const-string v1, "CMASAlertFullScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "type = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/CMASAlertFullScreen;->mCmasType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    invoke-virtual {p0}, Lcom/android/mms/ui/CMASAlertFullScreen;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "expiryTime"

    const-wide/16 v3, -0x1

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/mms/ui/CMASAlertFullScreen;->expiryTimeMillis:J

    .line 92
    iget-wide v1, p0, Lcom/android/mms/ui/CMASAlertFullScreen;->expiryTimeMillis:J

    invoke-static {p0, v1, v2, v6}, Lcom/android/mms/ui/MessageUtils;->formatTimeStampString(Landroid/content/Context;JZ)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/CMASAlertFullScreen;->mDate:Ljava/lang/String;

    .line 93
    const-string v1, "CMASAlertFullScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mDate = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/CMASAlertFullScreen;->mDate:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    invoke-virtual {p0}, Lcom/android/mms/ui/CMASAlertFullScreen;->updateLayout()V

    .line 98
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 224
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 225
    const-string v0, "CMASAlertFullScreen"

    const-string v1, " onDestroy()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 134
    const-string v0, "CMASAlertFullScreen"

    const-string v1, "CMASAlertFullScreen onKeyDown()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 147
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 143
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 135
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x5 -> :sswitch_0
        0x6 -> :sswitch_0
        0x18 -> :sswitch_0
        0x19 -> :sswitch_0
        0x1b -> :sswitch_0
    .end sparse-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 210
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 211
    const-string v0, "CMASAlertFullScreen"

    const-string v1, " onPause()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    return-void
.end method

.method public onRestart()V
    .locals 2

    .prologue
    .line 204
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    .line 205
    const-string v0, "CMASAlertFullScreen"

    const-string v1, " onRestart()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 198
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 199
    const-string v0, "CMASAlertFullScreen"

    const-string v1, " onResume()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 217
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 218
    const-string v0, "CMASAlertFullScreen"

    const-string v1, " onStop()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    return-void
.end method

.method public updateLayout()V
    .locals 3

    .prologue
    .line 102
    const v1, 0x7f030006

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/CMASAlertFullScreen;->setContentView(I)V

    .line 104
    const v1, 0x7f080018

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/CMASAlertFullScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/mms/ui/CMASAlertFullScreen;->mcmastype:Landroid/widget/TextView;

    .line 105
    const v1, 0x7f08001a

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/CMASAlertFullScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/mms/ui/CMASAlertFullScreen;->mcmasdate:Landroid/widget/TextView;

    .line 106
    iget-object v1, p0, Lcom/android/mms/ui/CMASAlertFullScreen;->mcmastype:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/mms/ui/CMASAlertFullScreen;->mCmasType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    iget-object v1, p0, Lcom/android/mms/ui/CMASAlertFullScreen;->mcmasdate:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/mms/ui/CMASAlertFullScreen;->mDate:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    const v1, 0x7f08001c

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/CMASAlertFullScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 110
    .local v0, viewButton:Landroid/widget/Button;
    invoke-virtual {v0}, Landroid/widget/Button;->requestFocus()Z

    .line 111
    new-instance v1, Lcom/android/mms/ui/CMASAlertFullScreen$1;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/CMASAlertFullScreen$1;-><init>(Lcom/android/mms/ui/CMASAlertFullScreen;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    const v1, 0x7f08001b

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/CMASAlertFullScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/android/mms/ui/CMASAlertFullScreen$2;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/CMASAlertFullScreen$2;-><init>(Lcom/android/mms/ui/CMASAlertFullScreen;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    return-void
.end method
