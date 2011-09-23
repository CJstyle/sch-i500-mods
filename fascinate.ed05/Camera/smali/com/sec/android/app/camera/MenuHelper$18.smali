.class Lcom/sec/android/app/camera/MenuHelper$18;
.super Ljava/lang/Object;
.source "MenuHelper.java"

# interfaces
.implements Lcom/sec/android/app/camera/MenuHelper$MenuItemsResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/MenuHelper;->addImageMenuItems(Landroid/view/Menu;ILandroid/app/Activity;Landroid/os/Handler;Ljava/lang/Runnable;Lcom/sec/android/app/camera/MenuHelper$MenuInvoker;)Lcom/sec/android/app/camera/MenuHelper$MenuItemsResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$requiresImageItems:Ljava/util/ArrayList;

.field final synthetic val$requiresNoDrmAccessItems:Ljava/util/ArrayList;

.field final synthetic val$requiresVideoItems:Ljava/util/ArrayList;

.field final synthetic val$requiresWriteAccessItems:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 858
    iput-object p1, p0, Lcom/sec/android/app/camera/MenuHelper$18;->val$requiresWriteAccessItems:Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/sec/android/app/camera/MenuHelper$18;->val$requiresNoDrmAccessItems:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/sec/android/app/camera/MenuHelper$18;->val$requiresImageItems:Ljava/util/ArrayList;

    iput-object p4, p0, Lcom/sec/android/app/camera/MenuHelper$18;->val$requiresVideoItems:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public aboutToCall(Landroid/view/MenuItem;Lcom/sec/android/app/camera/gallery/IImage;)V
    .locals 0
    .parameter "menu"
    .parameter "image"

    .prologue
    .line 859
    return-void
.end method

.method public gettingReadyToOpen(Landroid/view/Menu;Lcom/sec/android/app/camera/gallery/IImage;)V
    .locals 8
    .parameter "menu"
    .parameter "image"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 826
    if-nez p2, :cond_1

    .line 855
    :cond_0
    return-void

    .line 830
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 831
    .local v1, enableList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/MenuItem;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 834
    .local v0, disableList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/MenuItem;>;"
    invoke-interface {p2}, Lcom/sec/android/app/camera/gallery/IImage;->isReadonly()Z

    move-result v5

    if-eqz v5, :cond_2

    move-object v4, v0

    .line 835
    .local v4, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/MenuItem;>;"
    :goto_0
    iget-object v5, p0, Lcom/sec/android/app/camera/MenuHelper$18;->val$requiresWriteAccessItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 837
    invoke-interface {p2}, Lcom/sec/android/app/camera/gallery/IImage;->isDrm()Z

    move-result v5

    if-eqz v5, :cond_3

    move-object v4, v0

    .line 838
    :goto_1
    iget-object v5, p0, Lcom/sec/android/app/camera/MenuHelper$18;->val$requiresNoDrmAccessItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 840
    invoke-static {p2}, Lcom/sec/android/app/camera/ImageManager;->isImage(Lcom/sec/android/app/camera/gallery/IImage;)Z

    move-result v5

    if-eqz v5, :cond_4

    move-object v4, v1

    .line 841
    :goto_2
    iget-object v5, p0, Lcom/sec/android/app/camera/MenuHelper$18;->val$requiresImageItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 843
    invoke-static {p2}, Lcom/sec/android/app/camera/ImageManager;->isVideo(Lcom/sec/android/app/camera/gallery/IImage;)Z

    move-result v5

    if-eqz v5, :cond_5

    move-object v4, v1

    .line 844
    :goto_3
    iget-object v5, p0, Lcom/sec/android/app/camera/MenuHelper$18;->val$requiresVideoItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 846
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/MenuItem;

    .line 847
    .local v3, item:Landroid/view/MenuItem;
    invoke-interface {v3, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 848
    invoke-interface {v3, v7}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_4

    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #item:Landroid/view/MenuItem;
    .end local v4           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/MenuItem;>;"
    :cond_2
    move-object v4, v1

    .line 834
    goto :goto_0

    .restart local v4       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/MenuItem;>;"
    :cond_3
    move-object v4, v1

    .line 837
    goto :goto_1

    :cond_4
    move-object v4, v0

    .line 840
    goto :goto_2

    :cond_5
    move-object v4, v0

    .line 843
    goto :goto_3

    .line 851
    .restart local v2       #i$:Ljava/util/Iterator;
    :cond_6
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/MenuItem;

    .line 852
    .restart local v3       #item:Landroid/view/MenuItem;
    invoke-interface {v3, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 853
    invoke-interface {v3, v6}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_5
.end method
