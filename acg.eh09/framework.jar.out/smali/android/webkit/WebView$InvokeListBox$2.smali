.class Landroid/webkit/WebView$InvokeListBox$2;
.super Ljava/lang/Object;
.source "WebView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/webkit/WebView$InvokeListBox;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/webkit/WebView$InvokeListBox;

.field final synthetic val$adapter:Landroid/webkit/WebView$InvokeListBox$MyArrayListAdapter;

.field final synthetic val$listView:Landroid/widget/ListView;


# direct methods
.method constructor <init>(Landroid/webkit/WebView$InvokeListBox;Landroid/webkit/WebView$InvokeListBox$MyArrayListAdapter;Landroid/widget/ListView;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 9690
    iput-object p1, p0, Landroid/webkit/WebView$InvokeListBox$2;->this$1:Landroid/webkit/WebView$InvokeListBox;

    iput-object p2, p0, Landroid/webkit/WebView$InvokeListBox$2;->val$adapter:Landroid/webkit/WebView$InvokeListBox$MyArrayListAdapter;

    iput-object p3, p0, Landroid/webkit/WebView$InvokeListBox$2;->val$listView:Landroid/widget/ListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    const/4 v4, 0x0

    .line 9693
    iget-object v0, p0, Landroid/webkit/WebView$InvokeListBox$2;->this$1:Landroid/webkit/WebView$InvokeListBox;

    invoke-static {v0}, Landroid/webkit/WebView$InvokeListBox;->access$13200(Landroid/webkit/WebView$InvokeListBox;)I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 9694
    iget-object v0, p0, Landroid/webkit/WebView$InvokeListBox$2;->this$1:Landroid/webkit/WebView$InvokeListBox;

    iget-object v0, v0, Landroid/webkit/WebView$InvokeListBox;->this$0:Landroid/webkit/WebView;

    invoke-static {v0}, Landroid/webkit/WebView;->access$13000(Landroid/webkit/WebView;)Landroid/webkit/WebSelectDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSelectDialog;->dismiss()V

    .line 9695
    iget-object v0, p0, Landroid/webkit/WebView$InvokeListBox$2;->this$1:Landroid/webkit/WebView$InvokeListBox;

    iget-object v0, v0, Landroid/webkit/WebView$InvokeListBox;->this$0:Landroid/webkit/WebView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/webkit/WebView;->access$13002(Landroid/webkit/WebView;Landroid/webkit/WebSelectDialog;)Landroid/webkit/WebSelectDialog;

    .line 9696
    iget-object v0, p0, Landroid/webkit/WebView$InvokeListBox$2;->this$1:Landroid/webkit/WebView$InvokeListBox;

    iget-object v0, v0, Landroid/webkit/WebView$InvokeListBox;->this$0:Landroid/webkit/WebView;

    invoke-static {v0, v4}, Landroid/webkit/WebView;->access$7702(Landroid/webkit/WebView;Z)Z

    .line 9698
    :cond_0
    iget-object v0, p0, Landroid/webkit/WebView$InvokeListBox$2;->this$1:Landroid/webkit/WebView$InvokeListBox;

    invoke-static {v0}, Landroid/webkit/WebView$InvokeListBox;->access$13300(Landroid/webkit/WebView$InvokeListBox;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9699
    iget-object v0, p0, Landroid/webkit/WebView$InvokeListBox$2;->this$1:Landroid/webkit/WebView$InvokeListBox;

    iget-object v0, v0, Landroid/webkit/WebView$InvokeListBox;->this$0:Landroid/webkit/WebView;

    invoke-static {v0}, Landroid/webkit/WebView;->access$900(Landroid/webkit/WebView;)Landroid/webkit/WebViewCore;

    move-result-object v0

    const/16 v1, 0x7b

    iget-object v2, p0, Landroid/webkit/WebView$InvokeListBox$2;->val$adapter:Landroid/webkit/WebView$InvokeListBox$MyArrayListAdapter;

    invoke-virtual {v2}, Landroid/webkit/WebView$InvokeListBox$MyArrayListAdapter;->getCount()I

    move-result v2

    iget-object v3, p0, Landroid/webkit/WebView$InvokeListBox$2;->val$listView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v4, v3}, Landroid/webkit/WebViewCore;->sendMessage(IIILjava/lang/Object;)V

    .line 9708
    :goto_0
    iget-object v0, p0, Landroid/webkit/WebView$InvokeListBox$2;->this$1:Landroid/webkit/WebView$InvokeListBox;

    iget-object v0, v0, Landroid/webkit/WebView$InvokeListBox;->this$0:Landroid/webkit/WebView;

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/webkit/WebView$InvokeListBox$2;->this$1:Landroid/webkit/WebView$InvokeListBox;

    iget-object v1, v1, Landroid/webkit/WebView$InvokeListBox;->this$0:Landroid/webkit/WebView;

    iget-object v1, v1, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v2, 0x83

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 9710
    return-void

    .line 9704
    :cond_1
    iget-object v0, p0, Landroid/webkit/WebView$InvokeListBox$2;->this$1:Landroid/webkit/WebView$InvokeListBox;

    iget-object v0, v0, Landroid/webkit/WebView$InvokeListBox;->this$0:Landroid/webkit/WebView;

    invoke-static {v0}, Landroid/webkit/WebView;->access$900(Landroid/webkit/WebView;)Landroid/webkit/WebViewCore;

    move-result-object v0

    const/16 v1, 0x7c

    const/4 v2, -0x2

    invoke-virtual {v0, v1, v2, v4}, Landroid/webkit/WebViewCore;->sendMessage(III)V

    goto :goto_0
.end method
