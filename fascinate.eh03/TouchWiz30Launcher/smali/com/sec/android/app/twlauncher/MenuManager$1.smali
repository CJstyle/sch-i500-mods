.class Lcom/sec/android/app/twlauncher/MenuManager$1;
.super Ljava/lang/Object;
.source "MenuManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/twlauncher/MenuManager;->dispatchDraw(Landroid/graphics/Canvas;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/twlauncher/MenuManager;


# direct methods
.method constructor <init>(Lcom/sec/android/app/twlauncher/MenuManager;)V
    .locals 0
    .parameter

    .prologue
    .line 389
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/MenuManager$1;->this$0:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 391
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager$1;->this$0:Lcom/sec/android/app/twlauncher/MenuManager;

    #getter for: Lcom/sec/android/app/twlauncher/MenuManager;->mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;
    invoke-static {v0}, Lcom/sec/android/app/twlauncher/MenuManager;->access$000(Lcom/sec/android/app/twlauncher/MenuManager;)Lcom/sec/android/app/twlauncher/PageIndicator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/PageIndicator;->hide()V

    .line 392
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager$1;->this$0:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/MenuManager;->postInvalidate()V

    .line 393
    return-void
.end method
