.class Lcom/sec/android/app/twlauncher/Workspace$1;
.super Ljava/lang/Object;
.source "Workspace.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/twlauncher/Workspace;->dispatchDraw(Landroid/graphics/Canvas;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/twlauncher/Workspace;


# direct methods
.method constructor <init>(Lcom/sec/android/app/twlauncher/Workspace;)V
    .locals 0
    .parameter

    .prologue
    .line 851
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/Workspace$1;->this$0:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 853
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace$1;->this$0:Lcom/sec/android/app/twlauncher/Workspace;

    #getter for: Lcom/sec/android/app/twlauncher/Workspace;->mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;
    invoke-static {v0}, Lcom/sec/android/app/twlauncher/Workspace;->access$000(Lcom/sec/android/app/twlauncher/Workspace;)Lcom/sec/android/app/twlauncher/PageIndicator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/PageIndicator;->hide()V

    .line 854
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace$1;->this$0:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Workspace;->postInvalidate()V

    .line 855
    return-void
.end method
