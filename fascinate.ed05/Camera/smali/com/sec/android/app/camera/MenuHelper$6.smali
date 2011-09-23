.class Lcom/sec/android/app/camera/MenuHelper$6;
.super Ljava/lang/Object;
.source "MenuHelper.java"

# interfaces
.implements Lcom/sec/android/app/camera/MenuHelper$MenuCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/MenuHelper;->onImageShareClicked(Lcom/sec/android/app/camera/MenuHelper$MenuInvoker;Landroid/app/Activity;)Z
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
    .line 627
    iput-object p1, p0, Lcom/sec/android/app/camera/MenuHelper$6;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Landroid/net/Uri;Lcom/sec/android/app/camera/gallery/IImage;)V
    .locals 7
    .parameter "u"
    .parameter "image"

    .prologue
    .line 628
    if-nez p2, :cond_0

    .line 647
    :goto_0
    return-void

    .line 630
    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 631
    .local v1, intent:Landroid/content/Intent;
    const-string v4, "android.intent.action.SEND"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 632
    invoke-interface {p2}, Lcom/sec/android/app/camera/gallery/IImage;->getMimeType()Ljava/lang/String;

    move-result-object v3

    .line 633
    .local v3, mimeType:Ljava/lang/String;
    invoke-virtual {v1, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 634
    const-string v4, "android.intent.extra.STREAM"

    invoke-virtual {v1, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 635
    invoke-static {p2}, Lcom/sec/android/app/camera/ImageManager;->isImage(Lcom/sec/android/app/camera/gallery/IImage;)Z

    move-result v2

    .line 637
    .local v2, isImage:Z
    :try_start_0
    iget-object v4, p0, Lcom/sec/android/app/camera/MenuHelper$6;->val$activity:Landroid/app/Activity;

    iget-object v5, p0, Lcom/sec/android/app/camera/MenuHelper$6;->val$activity:Landroid/app/Activity;

    if-eqz v2, :cond_1

    const v6, 0x7f0700f6

    :goto_1
    invoke-virtual {v5, v6}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 641
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 642
    .local v0, ex:Landroid/content/ActivityNotFoundException;
    iget-object v4, p0, Lcom/sec/android/app/camera/MenuHelper$6;->val$activity:Landroid/app/Activity;

    if-eqz v2, :cond_2

    const v5, 0x7f0700f2

    :goto_2
    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 637
    .end local v0           #ex:Landroid/content/ActivityNotFoundException;
    :cond_1
    const v6, 0x7f0700f7

    goto :goto_1

    .line 642
    .restart local v0       #ex:Landroid/content/ActivityNotFoundException;
    :cond_2
    const v5, 0x7f0700f3

    goto :goto_2
.end method
