.class Lcom/sec/android/app/cradle/CradleMain$6;
.super Landroid/os/Handler;
.source "CradleMain.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/cradle/CradleMain;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/cradle/CradleMain;


# direct methods
.method constructor <init>(Lcom/sec/android/app/cradle/CradleMain;)V
    .locals 0
    .parameter

    .prologue
    .line 1878
    iput-object p1, p0, Lcom/sec/android/app/cradle/CradleMain$6;->this$0:Lcom/sec/android/app/cradle/CradleMain;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "m"

    .prologue
    .line 1881
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x2000

    if-ne v0, v1, :cond_1

    .line 1882
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleMain$6;->this$0:Lcom/sec/android/app/cradle/CradleMain;

    invoke-static {v0}, Lcom/sec/android/app/cradle/CradleMain;->access$900(Lcom/sec/android/app/cradle/CradleMain;)V

    .line 1886
    :cond_0
    :goto_0
    return-void

    .line 1883
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x2001

    if-ne v0, v1, :cond_0

    .line 1884
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleMain$6;->this$0:Lcom/sec/android/app/cradle/CradleMain;

    invoke-static {v0}, Lcom/sec/android/app/cradle/CradleMain;->access$1000(Lcom/sec/android/app/cradle/CradleMain;)V

    goto :goto_0
.end method
