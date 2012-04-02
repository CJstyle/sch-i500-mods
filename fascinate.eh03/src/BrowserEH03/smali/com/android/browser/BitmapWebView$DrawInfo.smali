.class Lcom/android/browser/BitmapWebView$DrawInfo;
.super Ljava/lang/Object;
.source "BitmapWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/BitmapWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DrawInfo"
.end annotation


# instance fields
.field bDrawBG:Z

.field bDrawCB:Z

.field validRegion:Landroid/graphics/Region;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 2971
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2972
    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, Lcom/android/browser/BitmapWebView$DrawInfo;->validRegion:Landroid/graphics/Region;

    .line 2973
    return-void
.end method
