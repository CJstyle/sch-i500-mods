.class Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil$SubTitleListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "VideoSubTitleUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SubTitleListAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil$SubTitleItem;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;Landroid/content/Context;Ljava/util/ArrayList;)V
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
            "Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil$SubTitleItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 879
    .local p3, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil$SubTitleItem;>;"
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil$SubTitleListAdapter;->this$0:Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;

    .line 880
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 881
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v8, 0x0

    .line 885
    move-object v4, p2

    .line 887
    .local v4, v:Landroid/view/View;
    if-nez v4, :cond_0

    .line 889
    iget-object v6, p0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil$SubTitleListAdapter;->this$0:Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;

    #getter for: Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->access$800(Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;)Landroid/content/Context;

    move-result-object v6

    const-string v7, "layout_inflater"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/LayoutInflater;

    .line 890
    .local v5, vi:Landroid/view/LayoutInflater;
    const v6, 0x7f030013

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 893
    .end local v5           #vi:Landroid/view/LayoutInflater;
    :cond_0
    invoke-virtual {p0, p1}, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil$SubTitleListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil$SubTitleItem;

    .line 895
    .local v1, item:Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil$SubTitleItem;
    const v6, 0x7f0a003c

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 896
    .local v2, settingItem:Landroid/widget/TextView;
    const v6, 0x7f0a003d

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 897
    .local v3, settingValue:Landroid/widget/TextView;
    const v6, 0x7f0a003e

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 899
    .local v0, check:Landroid/widget/CheckBox;
    invoke-virtual {v1}, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil$SubTitleItem;->getItem()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 901
    invoke-virtual {v1}, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil$SubTitleItem;->getItem()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 904
    :cond_1
    invoke-virtual {v1}, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil$SubTitleItem;->getValue()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 906
    invoke-virtual {v1}, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil$SubTitleItem;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 909
    :cond_2
    invoke-virtual {v1}, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil$SubTitleItem;->getCheckBoxState()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 910
    invoke-virtual {v0, v8}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 912
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->getSubTitleActivationFlag()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 913
    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 919
    :goto_0
    return-object v4

    .line 915
    :cond_3
    invoke-virtual {v0, v8}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    .line 917
    :cond_4
    const/16 v6, 0x8

    invoke-virtual {v0, v6}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto :goto_0
.end method
