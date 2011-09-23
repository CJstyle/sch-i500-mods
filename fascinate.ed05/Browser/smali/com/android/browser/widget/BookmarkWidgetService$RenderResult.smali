.class Lcom/android/browser/widget/BookmarkWidgetService$RenderResult;
.super Ljava/lang/Object;
.source "BookmarkWidgetService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/widget/BookmarkWidgetService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RenderResult"
.end annotation


# instance fields
.field mBitmap:Landroid/graphics/Bitmap;

.field final mId:I

.field final mTitle:Ljava/lang/String;

.field final mUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "id"
    .parameter "title"
    .parameter "url"

    .prologue
    .line 287
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 288
    iput p1, p0, Lcom/android/browser/widget/BookmarkWidgetService$RenderResult;->mId:I

    .line 289
    iput-object p2, p0, Lcom/android/browser/widget/BookmarkWidgetService$RenderResult;->mTitle:Ljava/lang/String;

    .line 290
    iput-object p3, p0, Lcom/android/browser/widget/BookmarkWidgetService$RenderResult;->mUrl:Ljava/lang/String;

    .line 291
    return-void
.end method
