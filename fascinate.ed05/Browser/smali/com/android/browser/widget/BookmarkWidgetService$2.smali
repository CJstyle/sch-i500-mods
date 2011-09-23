.class Lcom/android/browser/widget/BookmarkWidgetService$2;
.super Ljava/lang/Object;
.source "BookmarkWidgetService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


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
    .line 104
    iput-object p1, p0, Lcom/android/browser/widget/BookmarkWidgetService$2;->this$0:Lcom/android/browser/widget/BookmarkWidgetService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .parameter "className"
    .parameter "service"

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/browser/widget/BookmarkWidgetService$2;->this$0:Lcom/android/browser/widget/BookmarkWidgetService;

    new-instance v1, Landroid/service/urlrenderer/UrlRenderer;

    invoke-direct {v1, p2}, Landroid/service/urlrenderer/UrlRenderer;-><init>(Landroid/os/IBinder;)V

    invoke-static {v0, v1}, Lcom/android/browser/widget/BookmarkWidgetService;->access$002(Lcom/android/browser/widget/BookmarkWidgetService;Landroid/service/urlrenderer/UrlRenderer;)Landroid/service/urlrenderer/UrlRenderer;

    .line 102
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "className"

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/browser/widget/BookmarkWidgetService$2;->this$0:Lcom/android/browser/widget/BookmarkWidgetService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/browser/widget/BookmarkWidgetService;->access$002(Lcom/android/browser/widget/BookmarkWidgetService;Landroid/service/urlrenderer/UrlRenderer;)Landroid/service/urlrenderer/UrlRenderer;

    .line 106
    return-void
.end method
