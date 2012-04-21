.class Lcom/android/phone/IncomingButtonsView$TextViewFlushTimerTask;
.super Ljava/util/TimerTask;
.source "IncomingButtonsView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/IncomingButtonsView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TextViewFlushTimerTask"
.end annotation


# instance fields
.field mTextViewHandler:Landroid/os/Handler;

.field final synthetic this$0:Lcom/android/phone/IncomingButtonsView;


# direct methods
.method private constructor <init>(Lcom/android/phone/IncomingButtonsView;)V
    .locals 1
    .parameter

    .prologue
    .line 519
    iput-object p1, p0, Lcom/android/phone/IncomingButtonsView$TextViewFlushTimerTask;->this$0:Lcom/android/phone/IncomingButtonsView;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 520
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/phone/IncomingButtonsView$TextViewFlushTimerTask;->mTextViewHandler:Landroid/os/Handler;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/IncomingButtonsView;Lcom/android/phone/IncomingButtonsView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 519
    invoke-direct {p0, p1}, Lcom/android/phone/IncomingButtonsView$TextViewFlushTimerTask;-><init>(Lcom/android/phone/IncomingButtonsView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 523
    iget-object v0, p0, Lcom/android/phone/IncomingButtonsView$TextViewFlushTimerTask;->mTextViewHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/phone/IncomingButtonsView$TextViewFlushTimerTask$1;

    invoke-direct {v1, p0}, Lcom/android/phone/IncomingButtonsView$TextViewFlushTimerTask$1;-><init>(Lcom/android/phone/IncomingButtonsView$TextViewFlushTimerTask;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 534
    return-void
.end method
