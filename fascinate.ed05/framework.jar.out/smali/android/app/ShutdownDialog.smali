.class public Landroid/app/ShutdownDialog;
.super Landroid/app/Dialog;
.source "ShutdownDialog.java"


# static fields
.field private static final PATH_SHUTDOWNIMG:Ljava/lang/String; = "//system/media/video/shutdown/"

.field private static final SHUTDOWN_COUNT:I = 0x0

.field private static final TAG:Ljava/lang/String; = "ShutdownDialog"


# instance fields
.field private MAX_IMAGECOUNT:I

.field private cntImages:I

.field private height:I

.field private mContext:Landroid/content/Context;

.field private mHasStarted:Z

.field private mImages:Landroid/graphics/Bitmap;

.field private mKeyguardLock:Landroid/app/KeyguardManager$KeyguardLock;

.field private mKeyguardManager:Landroid/app/KeyguardManager;

.field private mRunOnAnimationEnd:Ljava/lang/Runnable;

.field private mShutdownView:Landroid/widget/ImageView;

.field private mViewUpdateHandler:Landroid/os/Handler;

.field private rescount:I

.field private str:Ljava/lang/String;

.field private width:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 76
    const v0, 0x1030007

    invoke-direct {p0, p1, v0}, Landroid/app/ShutdownDialog;-><init>(Landroid/content/Context;I)V

    .line 77
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .parameter "context"
    .parameter "theme"

    .prologue
    const/4 v1, 0x0

    .line 80
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 54
    const/16 v0, 0xc8

    iput v0, p0, Landroid/app/ShutdownDialog;->MAX_IMAGECOUNT:I

    .line 59
    const/4 v0, 0x0

    iput v0, p0, Landroid/app/ShutdownDialog;->cntImages:I

    .line 66
    iput-object v1, p0, Landroid/app/ShutdownDialog;->mContext:Landroid/content/Context;

    .line 69
    iput-object v1, p0, Landroid/app/ShutdownDialog;->mRunOnAnimationEnd:Ljava/lang/Runnable;

    .line 81
    iput-object p1, p0, Landroid/app/ShutdownDialog;->mContext:Landroid/content/Context;

    .line 82
    return-void
.end method

.method static synthetic access$000(Landroid/app/ShutdownDialog;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget v0, p0, Landroid/app/ShutdownDialog;->rescount:I

    return v0
.end method

.method static synthetic access$008(Landroid/app/ShutdownDialog;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 49
    iget v0, p0, Landroid/app/ShutdownDialog;->rescount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroid/app/ShutdownDialog;->rescount:I

    return v0
.end method

.method static synthetic access$100(Landroid/app/ShutdownDialog;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Landroid/app/ShutdownDialog;->mImages:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$102(Landroid/app/ShutdownDialog;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    iput-object p1, p0, Landroid/app/ShutdownDialog;->mImages:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$200(Landroid/app/ShutdownDialog;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Landroid/app/ShutdownDialog;->mShutdownView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$300(Landroid/app/ShutdownDialog;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget v0, p0, Landroid/app/ShutdownDialog;->cntImages:I

    return v0
.end method

.method static synthetic access$400(Landroid/app/ShutdownDialog;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Landroid/app/ShutdownDialog;->mViewUpdateHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Landroid/app/ShutdownDialog;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Landroid/app/ShutdownDialog;->mRunOnAnimationEnd:Ljava/lang/Runnable;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    const/4 v7, 0x1

    .line 87
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 88
    const/4 v5, 0x0

    iput v5, p0, Landroid/app/ShutdownDialog;->rescount:I

    .line 90
    invoke-virtual {p0}, Landroid/app/ShutdownDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    .line 91
    .local v3, l:Landroid/view/WindowManager$LayoutParams;
    new-instance v4, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v4}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 93
    .local v4, nl:Landroid/view/WindowManager$LayoutParams;
    invoke-virtual {v4, v3}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    .line 94
    iput v7, v4, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 96
    invoke-virtual {p0}, Landroid/app/ShutdownDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 98
    new-instance v5, Landroid/widget/ImageView;

    iget-object v6, p0, Landroid/app/ShutdownDialog;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Landroid/app/ShutdownDialog;->mShutdownView:Landroid/widget/ImageView;

    .line 99
    iget-object v5, p0, Landroid/app/ShutdownDialog;->mShutdownView:Landroid/widget/ImageView;

    invoke-virtual {p0, v5}, Landroid/app/ShutdownDialog;->setContentView(Landroid/view/View;)V

    .line 105
    new-instance v1, Ljava/io/File;

    const-string v5, "//system/media/video/shutdown/shutdown.cfg"

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 106
    .local v1, fileCount:Ljava/io/File;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 107
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v5

    long-to-int v5, v5

    iput v5, p0, Landroid/app/ShutdownDialog;->MAX_IMAGECOUNT:I

    .line 111
    :cond_0
    const/4 v2, 0x1

    .local v2, i:I
    :goto_0
    iget v5, p0, Landroid/app/ShutdownDialog;->MAX_IMAGECOUNT:I

    if-ge v2, v5, :cond_1

    .line 116
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "//system/media/video/shutdown/shutdown_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".png"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Landroid/app/ShutdownDialog;->str:Ljava/lang/String;

    .line 119
    new-instance v0, Ljava/io/File;

    iget-object v5, p0, Landroid/app/ShutdownDialog;->str:Ljava/lang/String;

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 122
    .local v0, f:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v5

    if-nez v5, :cond_2

    .line 124
    sub-int v5, v2, v7

    iput v5, p0, Landroid/app/ShutdownDialog;->cntImages:I

    .line 134
    .end local v0           #f:Ljava/io/File;
    :cond_1
    new-instance v5, Landroid/app/ShutdownDialog$1;

    invoke-direct {v5, p0}, Landroid/app/ShutdownDialog$1;-><init>(Landroid/app/ShutdownDialog;)V

    iput-object v5, p0, Landroid/app/ShutdownDialog;->mViewUpdateHandler:Landroid/os/Handler;

    .line 162
    return-void

    .line 128
    .restart local v0       #f:Ljava/io/File;
    :cond_2
    iget v5, p0, Landroid/app/ShutdownDialog;->cntImages:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Landroid/app/ShutdownDialog;->cntImages:I

    .line 111
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 166
    invoke-super {p0}, Landroid/app/Dialog;->onStart()V

    .line 167
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/ShutdownDialog;->mHasStarted:Z

    .line 169
    iget-object v0, p0, Landroid/app/ShutdownDialog;->mViewUpdateHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Landroid/app/ShutdownDialog;->mViewUpdateHandler:Landroid/os/Handler;

    const/16 v1, 0x12c

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 173
    :cond_0
    invoke-static {}, Lcom/android/internal/app/ShutdownThread;->startSoundThreadForPowerOff()V

    .line 185
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 189
    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    .line 190
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/ShutdownDialog;->mHasStarted:Z

    .line 191
    return-void
.end method

.method public setOnAnimationEnd(Ljava/lang/Runnable;)V
    .locals 0
    .parameter "r"

    .prologue
    .line 195
    iput-object p1, p0, Landroid/app/ShutdownDialog;->mRunOnAnimationEnd:Ljava/lang/Runnable;

    .line 196
    return-void
.end method
