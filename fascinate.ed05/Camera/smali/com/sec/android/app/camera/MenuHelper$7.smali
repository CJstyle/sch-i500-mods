.class Lcom/sec/android/app/camera/MenuHelper$7;
.super Ljava/lang/Object;
.source "MenuHelper.java"

# interfaces
.implements Lcom/sec/android/app/camera/MenuHelper$MenuCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/MenuHelper;->onViewPlayClicked(Lcom/sec/android/app/camera/MenuHelper$MenuInvoker;Landroid/app/Activity;)Z
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
    .line 656
    iput-object p1, p0, Lcom/sec/android/app/camera/MenuHelper$7;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Landroid/net/Uri;Lcom/sec/android/app/camera/gallery/IImage;)V
    .locals 3
    .parameter "uri"
    .parameter "image"

    .prologue
    .line 657
    if-eqz p2, :cond_0

    .line 658
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-interface {p2}, Lcom/sec/android/app/camera/gallery/IImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 660
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuHelper$7;->val$activity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 662
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    return-void
.end method
