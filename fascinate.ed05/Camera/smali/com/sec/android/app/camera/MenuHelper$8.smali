.class Lcom/sec/android/app/camera/MenuHelper$8;
.super Ljava/lang/Object;
.source "MenuHelper.java"

# interfaces
.implements Lcom/sec/android/app/camera/MenuHelper$MenuCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/MenuHelper;->onDeleteClicked(Lcom/sec/android/app/camera/MenuHelper$MenuInvoker;Landroid/app/Activity;Ljava/lang/Runnable;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$onDelete:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Landroid/app/Activity;Ljava/lang/Runnable;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 670
    iput-object p1, p0, Lcom/sec/android/app/camera/MenuHelper$8;->val$activity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/sec/android/app/camera/MenuHelper$8;->val$onDelete:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Landroid/net/Uri;Lcom/sec/android/app/camera/gallery/IImage;)V
    .locals 2
    .parameter "uri"
    .parameter "image"

    .prologue
    .line 671
    if-eqz p2, :cond_0

    .line 672
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuHelper$8;->val$activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/sec/android/app/camera/MenuHelper$8;->val$onDelete:Ljava/lang/Runnable;

    invoke-static {v0, v1, p2}, Lcom/sec/android/app/camera/MenuHelper;->deleteImage(Landroid/app/Activity;Ljava/lang/Runnable;Lcom/sec/android/app/camera/gallery/IImage;)V

    .line 674
    :cond_0
    return-void
.end method
