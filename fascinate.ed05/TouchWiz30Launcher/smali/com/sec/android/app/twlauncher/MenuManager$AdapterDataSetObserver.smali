.class Lcom/sec/android/app/twlauncher/MenuManager$AdapterDataSetObserver;
.super Landroid/database/DataSetObserver;
.source "MenuManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/twlauncher/MenuManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AdapterDataSetObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/twlauncher/MenuManager;


# direct methods
.method constructor <init>(Lcom/sec/android/app/twlauncher/MenuManager;)V
    .locals 0
    .parameter

    .prologue
    .line 1973
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/MenuManager$AdapterDataSetObserver;->this$0:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 2

    .prologue
    .line 1977
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager$AdapterDataSetObserver;->this$0:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-static {v0}, Lcom/sec/android/app/twlauncher/MenuManager;->access$500(Lcom/sec/android/app/twlauncher/MenuManager;)V

    .line 1978
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager$AdapterDataSetObserver;->this$0:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-static {v0}, Lcom/sec/android/app/twlauncher/MenuManager;->access$300(Lcom/sec/android/app/twlauncher/MenuManager;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 1979
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager$AdapterDataSetObserver;->this$0:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/MenuManager;->stopUpdateDB()V

    .line 1980
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager$AdapterDataSetObserver;->this$0:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/MenuManager;->startUpdateDB()V

    .line 1982
    :cond_0
    return-void
.end method

.method public onInvalidated()V
    .locals 1

    .prologue
    .line 1986
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager$AdapterDataSetObserver;->this$0:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-static {v0}, Lcom/sec/android/app/twlauncher/MenuManager;->access$500(Lcom/sec/android/app/twlauncher/MenuManager;)V

    .line 1987
    return-void
.end method
