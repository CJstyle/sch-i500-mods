.class Lcom/sec/android/app/camera/MenuHelper$5;
.super Ljava/lang/Object;
.source "MenuHelper.java"

# interfaces
.implements Lcom/sec/android/app/camera/MenuHelper$MenuCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/MenuHelper;->onSetAsClicked(Lcom/sec/android/app/camera/MenuHelper$MenuInvoker;Landroid/app/Activity;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .parameter

    .prologue
    .line 610
    iput-object p1, p0, Lcom/sec/android/app/camera/MenuHelper$5;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Landroid/net/Uri;Lcom/sec/android/app/camera/gallery/IImage;)V
    .locals 4
    .parameter "u"
    .parameter "image"

    .prologue
    .line 611
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 618
    :cond_0
    :goto_0
    return-void

    .line 615
    :cond_1
    invoke-static {p2}, Lcom/sec/android/app/camera/Util;->createSetAsIntent(Lcom/sec/android/app/camera/gallery/IImage;)Landroid/content/Intent;

    move-result-object v0

    .line 616
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuHelper$5;->val$activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/sec/android/app/camera/MenuHelper$5;->val$activity:Landroid/app/Activity;

    const v3, 0x7f0700f8

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
