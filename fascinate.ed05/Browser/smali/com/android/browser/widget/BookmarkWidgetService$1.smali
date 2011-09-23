.class Lcom/android/browser/widget/BookmarkWidgetService$1;
.super Landroid/os/Handler;
.source "BookmarkWidgetService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/widget/BookmarkWidgetService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/widget/BookmarkWidgetService;


# direct methods
.method constructor <init>(Lcom/android/browser/widget/BookmarkWidgetService;)V
    .locals 0
    .parameter

    .prologue
    .line 80
    iput-object p1, p0, Lcom/android/browser/widget/BookmarkWidgetService$1;->this$0:Lcom/android/browser/widget/BookmarkWidgetService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 81
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 95
    :cond_0
    :goto_0
    return-void

    .line 83
    :pswitch_0
    iget-object v0, p0, Lcom/android/browser/widget/BookmarkWidgetService$1;->this$0:Lcom/android/browser/widget/BookmarkWidgetService;

    invoke-static {v0}, Lcom/android/browser/widget/BookmarkWidgetService;->access$000(Lcom/android/browser/widget/BookmarkWidgetService;)Landroid/service/urlrenderer/UrlRenderer;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 84
    iget-object v0, p0, Lcom/android/browser/widget/BookmarkWidgetService$1;->this$0:Lcom/android/browser/widget/BookmarkWidgetService;

    invoke-static {v0}, Lcom/android/browser/widget/BookmarkWidgetService;->access$100(Lcom/android/browser/widget/BookmarkWidgetService;)V

    goto :goto_0

    .line 86
    :cond_1
    iget-object v0, p0, Lcom/android/browser/widget/BookmarkWidgetService$1;->this$0:Lcom/android/browser/widget/BookmarkWidgetService;

    invoke-static {v0}, Lcom/android/browser/widget/BookmarkWidgetService;->access$204(Lcom/android/browser/widget/BookmarkWidgetService;)I

    move-result v0

    const/4 v1, 0x5

    if-gt v0, v1, :cond_0

    .line 88
    iget-object v0, p0, Lcom/android/browser/widget/BookmarkWidgetService$1;->this$0:Lcom/android/browser/widget/BookmarkWidgetService;

    invoke-static {v0}, Lcom/android/browser/widget/BookmarkWidgetService;->access$300(Lcom/android/browser/widget/BookmarkWidgetService;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 81
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
