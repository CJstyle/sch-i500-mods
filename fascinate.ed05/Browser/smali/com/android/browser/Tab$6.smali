.class Lcom/android/browser/Tab$6;
.super Ljava/lang/Object;
.source "Tab.java"

# interfaces
.implements Landroid/webkit/DownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/Tab;->createSubWindow()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/Tab;


# direct methods
.method constructor <init>(Lcom/android/browser/Tab;)V
    .locals 0
    .parameter

    .prologue
    .line 1433
    iput-object p1, p0, Lcom/android/browser/Tab$6;->this$0:Lcom/android/browser/Tab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 7
    .parameter "url"
    .parameter "userAgent"
    .parameter "contentDisposition"
    .parameter "mimetype"
    .parameter "contentLength"

    .prologue
    .line 1436
    iget-object v0, p0, Lcom/android/browser/Tab$6;->this$0:Lcom/android/browser/Tab;

    invoke-static {v0}, Lcom/android/browser/Tab;->access$400(Lcom/android/browser/Tab;)Lcom/android/browser/BrowserActivity;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-wide v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/browser/BrowserActivity;->onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 1438
    iget-object v0, p0, Lcom/android/browser/Tab$6;->this$0:Lcom/android/browser/Tab;

    invoke-static {v0}, Lcom/android/browser/Tab;->access$1100(Lcom/android/browser/Tab;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->copyBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebBackForwardList;->getSize()I

    move-result v0

    if-nez v0, :cond_0

    .line 1441
    iget-object v0, p0, Lcom/android/browser/Tab$6;->this$0:Lcom/android/browser/Tab;

    invoke-virtual {v0}, Lcom/android/browser/Tab;->dismissSubWindow()V

    .line 1443
    :cond_0
    return-void
.end method
