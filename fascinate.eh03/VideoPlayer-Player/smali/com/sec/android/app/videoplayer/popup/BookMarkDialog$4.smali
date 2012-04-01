.class Lcom/sec/android/app/videoplayer/popup/BookMarkDialog$4;
.super Ljava/lang/Object;
.source "BookMarkDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;


# direct methods
.method constructor <init>(Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 335
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/popup/BookMarkDialog$4;->this$0:Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    const/4 v2, 0x1

    .line 338
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/popup/BookMarkDialog$4;->this$0:Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;

    #getter for: Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;->mListType:I
    invoke-static {v0}, Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;->access$600(Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;)I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 339
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/popup/BookMarkDialog$4;->this$0:Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;

    #calls: Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;->exitDialog()V
    invoke-static {v0}, Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;->access$000(Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;)V

    .line 346
    :cond_0
    :goto_0
    return-void

    .line 340
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/popup/BookMarkDialog$4;->this$0:Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;

    #getter for: Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;->mListType:I
    invoke-static {v0}, Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;->access$600(Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 342
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/popup/BookMarkDialog$4;->this$0:Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;

    #setter for: Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;->ExceptThumnail:Z
    invoke-static {v0, v2}, Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;->access$702(Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;Z)Z

    .line 343
    const-string v0, "BookMarkDialog"

    const-string v1, "rightSk. current bookmark remove list"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/popup/BookMarkDialog$4;->this$0:Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;

    #calls: Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;->changeListView(I)V
    invoke-static {v0, v2}, Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;->access$900(Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;I)V

    goto :goto_0
.end method
