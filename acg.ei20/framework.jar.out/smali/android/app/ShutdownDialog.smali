.class public Landroid/app/ShutdownDialog;
.super Landroid/app/Dialog;
.source "ShutdownDialog.java"


# static fields
.field private static final DEFAULT_CARRIER_POWER_ONOFF_VALUE:I = 0x0

.field private static final PATH_SHUTDOWNIMG:Ljava/lang/String; = "//system/media/video/shutdown/shutdown.qmg"

.field private static PATH_SHUTDOWNIMG_ACG:Ljava/lang/String; = null

.field private static final SHUTDOWN_COUNT:I = 0x0

.field private static final TAG:Ljava/lang/String; = "ShutdownDialog"


# instance fields
.field private MAX_IMAGECOUNT:I

.field private buf:[I

.field private cntImages:I

.field private handle:I

.field private height:I

.field private isOnCarrierPowerOnOff:I

.field private mContext:Landroid/content/Context;

.field private mHasStarted:Z

.field private mImages:Landroid/graphics/Bitmap;

.field private mKeyguardLock:Landroid/app/KeyguardManager$KeyguardLock;

.field private mKeyguardManager:Landroid/app/KeyguardManager;

.field private mRunOnAnimationEnd:Ljava/lang/Runnable;

.field private mShutdownView:Landroid/widget/ImageView;

.field private mViewUpdateHandler:Landroid/os/Handler;

.field private mViewUpdateHandler_ACG:Landroid/os/Handler;

.field private rescount:I

.field private str:Ljava/lang/String;

.field private width:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 94
    const v0, 0x1030007

    invoke-direct {p0, p1, v0}, Landroid/app/ShutdownDialog;-><init>(Landroid/content/Context;I)V

    .line 95
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .parameter "context"
    .parameter "theme"

    .prologue
    const/4 v1, 0x0

    .line 98
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 62
    const/16 v0, 0xc8

    iput v0, p0, Landroid/app/ShutdownDialog;->MAX_IMAGECOUNT:I

    .line 71
    const/4 v0, 0x0

    iput v0, p0, Landroid/app/ShutdownDialog;->cntImages:I

    .line 80
    iput-object v1, p0, Landroid/app/ShutdownDialog;->mContext:Landroid/content/Context;

    .line 87
    iput-object v1, p0, Landroid/app/ShutdownDialog;->mRunOnAnimationEnd:Ljava/lang/Runnable;

    .line 99
    iput-object p1, p0, Landroid/app/ShutdownDialog;->mContext:Landroid/content/Context;

    .line 100
    return-void
.end method

.method static synthetic access$000(Landroid/app/ShutdownDialog;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget v0, p0, Landroid/app/ShutdownDialog;->handle:I

    return v0
.end method

.method static synthetic access$100(Landroid/app/ShutdownDialog;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Landroid/app/ShutdownDialog;->buf:[I

    return-object v0
.end method

.method static synthetic access$1000(Landroid/app/ShutdownDialog;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget v0, p0, Landroid/app/ShutdownDialog;->cntImages:I

    return v0
.end method

.method static synthetic access$1100(Landroid/app/ShutdownDialog;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Landroid/app/ShutdownDialog;->mViewUpdateHandler_ACG:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Landroid/app/ShutdownDialog;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Landroid/app/ShutdownDialog;->mImages:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$202(Landroid/app/ShutdownDialog;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    iput-object p1, p0, Landroid/app/ShutdownDialog;->mImages:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$300(Landroid/app/ShutdownDialog;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget v0, p0, Landroid/app/ShutdownDialog;->width:I

    return v0
.end method

.method static synthetic access$400(Landroid/app/ShutdownDialog;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget v0, p0, Landroid/app/ShutdownDialog;->height:I

    return v0
.end method

.method static synthetic access$500(Landroid/app/ShutdownDialog;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Landroid/app/ShutdownDialog;->mShutdownView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$600(Landroid/app/ShutdownDialog;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Landroid/app/ShutdownDialog;->mRunOnAnimationEnd:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$700(Landroid/app/ShutdownDialog;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Landroid/app/ShutdownDialog;->mViewUpdateHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$800()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    sget-object v0, Landroid/app/ShutdownDialog;->PATH_SHUTDOWNIMG_ACG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$802(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"

    .prologue
    .line 57
    sput-object p0, Landroid/app/ShutdownDialog;->PATH_SHUTDOWNIMG_ACG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$900(Landroid/app/ShutdownDialog;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget v0, p0, Landroid/app/ShutdownDialog;->rescount:I

    return v0
.end method

.method static synthetic access$908(Landroid/app/ShutdownDialog;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 57
    iget v0, p0, Landroid/app/ShutdownDialog;->rescount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroid/app/ShutdownDialog;->rescount:I

    return v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 12
    .parameter "savedInstanceState"

    .prologue
    const/4 v10, 0x1

    const/4 v8, 0x0

    const-string v11, "//data/local/tmp/"

    const-string v9, "ShutdownDialog"

    .line 104
    const-string v7, "ShutdownDialog"

    const-string/jumbo v7, "onCreate"

    invoke-static {v9, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 108
    iput v8, p0, Landroid/app/ShutdownDialog;->rescount:I

    .line 109
    iget-object v7, p0, Landroid/app/ShutdownDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 110
    .local v6, resolver:Landroid/content/ContentResolver;
    const-string v7, "carrier_power_onoff"

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    iput v7, p0, Landroid/app/ShutdownDialog;->isOnCarrierPowerOnOff:I

    .line 114
    invoke-virtual {p0}, Landroid/app/ShutdownDialog;->getWindow()Landroid/view/Window;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    .line 115
    .local v4, l:Landroid/view/WindowManager$LayoutParams;
    new-instance v5, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v5}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 117
    .local v5, nl:Landroid/view/WindowManager$LayoutParams;
    invoke-virtual {v5, v4}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    .line 118
    iput v10, v5, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 120
    invoke-virtual {p0}, Landroid/app/ShutdownDialog;->getWindow()Landroid/view/Window;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 122
    new-instance v7, Landroid/widget/ImageView;

    iget-object v8, p0, Landroid/app/ShutdownDialog;->mContext:Landroid/content/Context;

    invoke-direct {v7, v8}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Landroid/app/ShutdownDialog;->mShutdownView:Landroid/widget/ImageView;

    .line 123
    iget-object v7, p0, Landroid/app/ShutdownDialog;->mShutdownView:Landroid/widget/ImageView;

    invoke-virtual {p0, v7}, Landroid/app/ShutdownDialog;->setContentView(Landroid/view/View;)V

    .line 126
    const-string v7, "//data/local/tmp/"

    sput-object v11, Landroid/app/ShutdownDialog;->PATH_SHUTDOWNIMG_ACG:Ljava/lang/String;

    .line 127
    new-instance v1, Ljava/io/File;

    sget-object v7, Landroid/app/ShutdownDialog;->PATH_SHUTDOWNIMG_ACG:Ljava/lang/String;

    const-string/jumbo v8, "shutdown_1.png"

    invoke-direct {v1, v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 130
    const-string v7, "//data/local/tmp/"

    sput-object v11, Landroid/app/ShutdownDialog;->PATH_SHUTDOWNIMG_ACG:Ljava/lang/String;

    .line 132
    new-instance v2, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Landroid/app/ShutdownDialog;->PATH_SHUTDOWNIMG_ACG:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "shutdown.cfg"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 133
    .local v2, fileCount:Ljava/io/File;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 134
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v7

    long-to-int v7, v7

    iput v7, p0, Landroid/app/ShutdownDialog;->MAX_IMAGECOUNT:I

    .line 136
    :cond_0
    const/4 v3, 0x1

    .local v3, i:I
    :goto_0
    iget v7, p0, Landroid/app/ShutdownDialog;->MAX_IMAGECOUNT:I

    if-ge v3, v7, :cond_1

    .line 139
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Landroid/app/ShutdownDialog;->PATH_SHUTDOWNIMG_ACG:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "shutdown_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".png"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Landroid/app/ShutdownDialog;->str:Ljava/lang/String;

    .line 140
    new-instance v0, Ljava/io/File;

    iget-object v7, p0, Landroid/app/ShutdownDialog;->str:Ljava/lang/String;

    invoke-direct {v0, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 143
    .local v0, f:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v7

    if-nez v7, :cond_2

    .line 145
    sub-int v7, v3, v10

    iput v7, p0, Landroid/app/ShutdownDialog;->cntImages:I

    .line 162
    .end local v0           #f:Ljava/io/File;
    .end local v2           #fileCount:Ljava/io/File;
    .end local v3           #i:I
    :cond_1
    :goto_1
    new-instance v7, Landroid/app/ShutdownDialog$1;

    invoke-direct {v7, p0}, Landroid/app/ShutdownDialog$1;-><init>(Landroid/app/ShutdownDialog;)V

    iput-object v7, p0, Landroid/app/ShutdownDialog;->mViewUpdateHandler:Landroid/os/Handler;

    .line 213
    new-instance v7, Landroid/app/ShutdownDialog$2;

    invoke-direct {v7, p0}, Landroid/app/ShutdownDialog$2;-><init>(Landroid/app/ShutdownDialog;)V

    iput-object v7, p0, Landroid/app/ShutdownDialog;->mViewUpdateHandler_ACG:Landroid/os/Handler;

    .line 243
    return-void

    .line 149
    .restart local v0       #f:Ljava/io/File;
    .restart local v2       #fileCount:Ljava/io/File;
    .restart local v3       #i:I
    :cond_2
    iget v7, p0, Landroid/app/ShutdownDialog;->cntImages:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Landroid/app/ShutdownDialog;->cntImages:I

    .line 136
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 152
    .end local v0           #f:Ljava/io/File;
    .end local v2           #fileCount:Ljava/io/File;
    .end local v3           #i:I
    :cond_3
    const-string v7, "//system/media/video/shutdown/shutdown.qmg"

    invoke-static {v7}, Landroid/app/LibQmg;->qmgOpen(Ljava/lang/String;)I

    move-result v7

    iput v7, p0, Landroid/app/ShutdownDialog;->handle:I

    .line 153
    iget v7, p0, Landroid/app/ShutdownDialog;->handle:I

    invoke-static {v7}, Landroid/app/LibQmg;->qmgGetWidth(I)I

    move-result v7

    iput v7, p0, Landroid/app/ShutdownDialog;->width:I

    .line 154
    iget v7, p0, Landroid/app/ShutdownDialog;->handle:I

    invoke-static {v7}, Landroid/app/LibQmg;->qmgGetHeight(I)I

    move-result v7

    iput v7, p0, Landroid/app/ShutdownDialog;->height:I

    .line 156
    const-string v7, "ShutdownDialog"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Image w:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Landroid/app/ShutdownDialog;->width:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    const-string v7, "ShutdownDialog"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Image h:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Landroid/app/ShutdownDialog;->height:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    iget v7, p0, Landroid/app/ShutdownDialog;->width:I

    iget v8, p0, Landroid/app/ShutdownDialog;->height:I

    mul-int/2addr v7, v8

    new-array v7, v7, [I

    iput-object v7, p0, Landroid/app/ShutdownDialog;->buf:[I

    goto :goto_1
.end method

.method public onStart()V
    .locals 5

    .prologue
    const/16 v4, 0x12c

    .line 247
    invoke-super {p0}, Landroid/app/Dialog;->onStart()V

    .line 248
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/app/ShutdownDialog;->mHasStarted:Z

    .line 251
    const-string v2, "//data/local/tmp/"

    sput-object v2, Landroid/app/ShutdownDialog;->PATH_SHUTDOWNIMG_ACG:Ljava/lang/String;

    .line 252
    new-instance v0, Ljava/io/File;

    sget-object v2, Landroid/app/ShutdownDialog;->PATH_SHUTDOWNIMG_ACG:Ljava/lang/String;

    const-string/jumbo v3, "shutdown_1.png"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 255
    iget-object v2, p0, Landroid/app/ShutdownDialog;->mViewUpdateHandler_ACG:Landroid/os/Handler;

    if-eqz v2, :cond_0

    .line 256
    iget-object v2, p0, Landroid/app/ShutdownDialog;->mViewUpdateHandler_ACG:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 266
    :cond_0
    :goto_0
    iget-object v2, p0, Landroid/app/ShutdownDialog;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "statusbar"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/StatusBarManager;

    .line 268
    .local v1, statusBarManager:Landroid/app/StatusBarManager;
    if-eqz v1, :cond_1

    .line 269
    invoke-virtual {v1}, Landroid/app/StatusBarManager;->collapse()V

    .line 272
    :cond_1
    invoke-static {}, Lcom/android/internal/app/ShutdownThread;->startSoundThreadForPowerOff()V

    .line 274
    iget-object v2, p0, Landroid/app/ShutdownDialog;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_2

    .line 276
    iget-object v2, p0, Landroid/app/ShutdownDialog;->mContext:Landroid/content/Context;

    const-string v3, "keyguard"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/KeyguardManager;

    iput-object v2, p0, Landroid/app/ShutdownDialog;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 277
    iget-object v2, p0, Landroid/app/ShutdownDialog;->mKeyguardManager:Landroid/app/KeyguardManager;

    const-string v3, "ShutdownDialog"

    invoke-virtual {v2, v3}, Landroid/app/KeyguardManager;->newKeyguardLock(Ljava/lang/String;)Landroid/app/KeyguardManager$KeyguardLock;

    move-result-object v2

    iput-object v2, p0, Landroid/app/ShutdownDialog;->mKeyguardLock:Landroid/app/KeyguardManager$KeyguardLock;

    .line 278
    iget-object v2, p0, Landroid/app/ShutdownDialog;->mKeyguardLock:Landroid/app/KeyguardManager$KeyguardLock;

    invoke-virtual {v2}, Landroid/app/KeyguardManager$KeyguardLock;->disableKeyguard()V

    .line 281
    :cond_2
    return-void

    .line 259
    .end local v1           #statusBarManager:Landroid/app/StatusBarManager;
    :cond_3
    iget-object v2, p0, Landroid/app/ShutdownDialog;->mViewUpdateHandler:Landroid/os/Handler;

    if-eqz v2, :cond_0

    .line 260
    iget-object v2, p0, Landroid/app/ShutdownDialog;->mViewUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 285
    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    .line 286
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/ShutdownDialog;->mHasStarted:Z

    .line 287
    return-void
.end method

.method public setOnAnimationEnd(Ljava/lang/Runnable;)V
    .locals 0
    .parameter "r"

    .prologue
    .line 291
    iput-object p1, p0, Landroid/app/ShutdownDialog;->mRunOnAnimationEnd:Ljava/lang/Runnable;

    .line 292
    return-void
.end method
