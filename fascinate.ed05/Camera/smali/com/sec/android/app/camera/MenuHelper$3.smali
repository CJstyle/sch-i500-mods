.class Lcom/sec/android/app/camera/MenuHelper$3;
.super Ljava/lang/Object;
.source "MenuHelper.java"

# interfaces
.implements Lcom/sec/android/app/camera/MenuHelper$MenuCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/MenuHelper;->onRotateClicked(Lcom/sec/android/app/camera/MenuHelper$MenuInvoker;I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$degree:I


# direct methods
.method constructor <init>(I)V
    .locals 0
    .parameter

    .prologue
    .line 577
    iput p1, p0, Lcom/sec/android/app/camera/MenuHelper$3;->val$degree:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Landroid/net/Uri;Lcom/sec/android/app/camera/gallery/IImage;)V
    .locals 1
    .parameter "u"
    .parameter "image"

    .prologue
    .line 578
    if-eqz p2, :cond_0

    invoke-interface {p2}, Lcom/sec/android/app/camera/gallery/IImage;->isReadonly()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 582
    :cond_0
    :goto_0
    return-void

    .line 581
    :cond_1
    iget v0, p0, Lcom/sec/android/app/camera/MenuHelper$3;->val$degree:I

    invoke-interface {p2, v0}, Lcom/sec/android/app/camera/gallery/IImage;->rotateImageBy(I)Z

    goto :goto_0
.end method
