.class Lcom/sec/android/app/videoplayer/popup/VideoDetailsDialog$DetailsListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "VideoDetailsDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/videoplayer/popup/VideoDetailsDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DetailsListAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/sec/android/app/videoplayer/popup/VideoDetailsDialog$DetailsItem;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/videoplayer/popup/VideoDetailsDialog;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/videoplayer/popup/VideoDetailsDialog;Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 1
    .parameter
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/videoplayer/popup/VideoDetailsDialog$DetailsItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 403
    .local p3, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/videoplayer/popup/VideoDetailsDialog$DetailsItem;>;"
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/popup/VideoDetailsDialog$DetailsListAdapter;->this$0:Lcom/sec/android/app/videoplayer/popup/VideoDetailsDialog;

    .line 404
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 405
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 409
    move-object v7, p2

    .line 410
    .local v7, v:Landroid/view/View;
    if-nez v7, :cond_0

    .line 412
    iget-object v9, p0, Lcom/sec/android/app/videoplayer/popup/VideoDetailsDialog$DetailsListAdapter;->this$0:Lcom/sec/android/app/videoplayer/popup/VideoDetailsDialog;

    #getter for: Lcom/sec/android/app/videoplayer/popup/VideoDetailsDialog;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/sec/android/app/videoplayer/popup/VideoDetailsDialog;->access$100(Lcom/sec/android/app/videoplayer/popup/VideoDetailsDialog;)Landroid/content/Context;

    move-result-object v9

    const-string v10, "layout_inflater"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/LayoutInflater;

    .line 413
    .local v8, vi:Landroid/view/LayoutInflater;
    const v9, 0x7f030004

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 416
    .end local v8           #vi:Landroid/view/LayoutInflater;
    :cond_0
    invoke-virtual {p0, p1}, Lcom/sec/android/app/videoplayer/popup/VideoDetailsDialog$DetailsListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/videoplayer/popup/VideoDetailsDialog$DetailsItem;

    .line 418
    .local v4, ti:Lcom/sec/android/app/videoplayer/popup/VideoDetailsDialog$DetailsItem;
    const v9, 0x7f0a0009

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 419
    .local v5, title:Landroid/widget/TextView;
    const v9, 0x7f0a000a

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 420
    .local v0, content:Landroid/widget/TextView;
    const v9, 0x7f0a000b

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 421
    .local v3, roCnt:Landroid/widget/TextView;
    const v9, 0x7f0a000c

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 422
    .local v6, useType:Landroid/widget/TextView;
    const v9, 0x7f0a000d

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 423
    .local v1, drmType:Landroid/widget/TextView;
    const v9, 0x7f0a000e

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 425
    .local v2, drmValidity:Landroid/widget/TextView;
    invoke-virtual {v4}, Lcom/sec/android/app/videoplayer/popup/VideoDetailsDialog$DetailsItem;->getTitle()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_1

    .line 427
    const/4 v9, 0x0

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 428
    invoke-virtual {v4}, Lcom/sec/android/app/videoplayer/popup/VideoDetailsDialog$DetailsItem;->getTitle()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 433
    :goto_0
    invoke-virtual {v4}, Lcom/sec/android/app/videoplayer/popup/VideoDetailsDialog$DetailsItem;->getContent()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_2

    .line 435
    const/4 v9, 0x0

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 436
    invoke-virtual {v4}, Lcom/sec/android/app/videoplayer/popup/VideoDetailsDialog$DetailsItem;->getContent()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 441
    :goto_1
    invoke-virtual {v4}, Lcom/sec/android/app/videoplayer/popup/VideoDetailsDialog$DetailsItem;->getRoCnt()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_3

    .line 443
    const/4 v9, 0x0

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 444
    invoke-virtual {v4}, Lcom/sec/android/app/videoplayer/popup/VideoDetailsDialog$DetailsItem;->getRoCnt()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 449
    :goto_2
    invoke-virtual {v4}, Lcom/sec/android/app/videoplayer/popup/VideoDetailsDialog$DetailsItem;->getUsesType()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_4

    .line 451
    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 452
    invoke-virtual {v4}, Lcom/sec/android/app/videoplayer/popup/VideoDetailsDialog$DetailsItem;->getUsesType()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 457
    :goto_3
    invoke-virtual {v4}, Lcom/sec/android/app/videoplayer/popup/VideoDetailsDialog$DetailsItem;->getDrmType()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_5

    .line 459
    const/4 v9, 0x0

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 460
    invoke-virtual {v4}, Lcom/sec/android/app/videoplayer/popup/VideoDetailsDialog$DetailsItem;->getDrmType()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 465
    :goto_4
    invoke-virtual {v4}, Lcom/sec/android/app/videoplayer/popup/VideoDetailsDialog$DetailsItem;->getDrmValidity()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_6

    .line 467
    const/4 v9, 0x0

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 468
    invoke-virtual {v4}, Lcom/sec/android/app/videoplayer/popup/VideoDetailsDialog$DetailsItem;->getDrmValidity()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 481
    :goto_5
    return-object v7

    .line 431
    :cond_1
    const/16 v9, 0x8

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 439
    :cond_2
    const/16 v9, 0x8

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 447
    :cond_3
    const/16 v9, 0x8

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 455
    :cond_4
    const/16 v9, 0x8

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    .line 463
    :cond_5
    const/16 v9, 0x8

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4

    .line 471
    :cond_6
    const/16 v9, 0x8

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_5
.end method
