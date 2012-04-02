.class public Lcom/sec/android/app/cradle/CradleHomeSettings$SettingAdapter;
.super Landroid/widget/ArrayAdapter;
.source "CradleHomeSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/cradle/CradleHomeSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SettingAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/sec/android/app/cradle/CradleHomeSettings$SettingItem;",
        ">;"
    }
.end annotation


# instance fields
.field private mResourceId:I

.field final synthetic this$0:Lcom/sec/android/app/cradle/CradleHomeSettings;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/cradle/CradleHomeSettings;Landroid/content/Context;ILjava/util/List;)V
    .locals 0
    .parameter
    .parameter "context"
    .parameter "textViewResourceId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcom/sec/android/app/cradle/CradleHomeSettings$SettingItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 678
    .local p4, objects:Ljava/util/List;,"Ljava/util/List<Lcom/sec/android/app/cradle/CradleHomeSettings$SettingItem;>;"
    iput-object p1, p0, Lcom/sec/android/app/cradle/CradleHomeSettings$SettingAdapter;->this$0:Lcom/sec/android/app/cradle/CradleHomeSettings;

    .line 679
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 680
    iput p3, p0, Lcom/sec/android/app/cradle/CradleHomeSettings$SettingAdapter;->mResourceId:I

    .line 681
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 589
    const/4 v6, 0x0

    .line 592
    .local v6, todoView:Landroid/widget/RelativeLayout;
    if-nez p2, :cond_3

    .line 593
    invoke-virtual {p0}, Lcom/sec/android/app/cradle/CradleHomeSettings$SettingAdapter;->getContext()Landroid/content/Context;

    move-result-object v8

    const-string v9, "layout_inflater"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/LayoutInflater;

    .line 594
    .local v7, vi:Landroid/view/LayoutInflater;
    iget v8, p0, Lcom/sec/android/app/cradle/CradleHomeSettings$SettingAdapter;->mResourceId:I

    invoke-virtual {v7, v8, p3, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    .end local v6           #todoView:Landroid/widget/RelativeLayout;
    check-cast v6, Landroid/widget/RelativeLayout;

    .line 599
    .end local v7           #vi:Landroid/view/LayoutInflater;
    .restart local v6       #todoView:Landroid/widget/RelativeLayout;
    :goto_0
    invoke-virtual {p0, p1}, Lcom/sec/android/app/cradle/CradleHomeSettings$SettingAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/cradle/CradleHomeSettings$SettingItem;

    .line 601
    .local v2, item:Lcom/sec/android/app/cradle/CradleHomeSettings$SettingItem;
    if-eqz v2, :cond_2

    .line 602
    const v8, 0x7f0a0047

    invoke-virtual {v6, v8}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 603
    .local v3, mainText:Landroid/widget/TextView;
    const v8, 0x7f0a0049

    invoke-virtual {v6, v8}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 605
    .local v5, subText:Landroid/widget/TextView;
    iget-boolean v8, v2, Lcom/sec/android/app/cradle/CradleHomeSettings$SettingItem;->mEnabled:Z

    if-nez v8, :cond_4

    .line 606
    invoke-virtual {v3, v10}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 607
    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 614
    :goto_1
    if-eqz v3, :cond_0

    .line 616
    invoke-virtual {v2}, Lcom/sec/android/app/cradle/CradleHomeSettings$SettingItem;->getMainTitle()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 619
    :cond_0
    if-eqz v5, :cond_1

    .line 620
    invoke-virtual {v2}, Lcom/sec/android/app/cradle/CradleHomeSettings$SettingItem;->getSubTitle()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 623
    :cond_1
    const v8, 0x7f0a0048

    invoke-virtual {v6, v8}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 624
    .local v1, box:Landroid/widget/CheckBox;
    invoke-virtual {v2}, Lcom/sec/android/app/cradle/CradleHomeSettings$SettingItem;->getType()I

    move-result v8

    if-ne v8, v11, :cond_5

    .line 627
    invoke-virtual {v1, v10}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 643
    iget-boolean v8, v2, Lcom/sec/android/app/cradle/CradleHomeSettings$SettingItem;->mStateChecked:Z

    invoke-virtual {v1, v8}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 645
    move v4, p1

    .line 646
    .local v4, myPosition:I
    new-instance v8, Lcom/sec/android/app/cradle/CradleHomeSettings$SettingAdapter$1;

    invoke-direct {v8, p0, v1, p1, v4}, Lcom/sec/android/app/cradle/CradleHomeSettings$SettingAdapter$1;-><init>(Lcom/sec/android/app/cradle/CradleHomeSettings$SettingAdapter;Landroid/widget/CheckBox;II)V

    invoke-virtual {v1, v8}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 675
    .end local v1           #box:Landroid/widget/CheckBox;
    .end local v3           #mainText:Landroid/widget/TextView;
    .end local v4           #myPosition:I
    .end local v5           #subText:Landroid/widget/TextView;
    :cond_2
    :goto_2
    return-object v6

    .line 596
    .end local v2           #item:Lcom/sec/android/app/cradle/CradleHomeSettings$SettingItem;
    :cond_3
    move-object v0, p2

    check-cast v0, Landroid/widget/RelativeLayout;

    move-object v6, v0

    goto :goto_0

    .line 610
    .restart local v2       #item:Lcom/sec/android/app/cradle/CradleHomeSettings$SettingItem;
    .restart local v3       #mainText:Landroid/widget/TextView;
    .restart local v5       #subText:Landroid/widget/TextView;
    :cond_4
    invoke-virtual {v3, v11}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 611
    invoke-virtual {v5, v11}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_1

    .line 671
    .restart local v1       #box:Landroid/widget/CheckBox;
    :cond_5
    const/16 v8, 0x8

    invoke-virtual {v1, v8}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto :goto_2
.end method

.method public isEnabled(I)Z
    .locals 2
    .parameter "position"

    .prologue
    .line 583
    invoke-virtual {p0, p1}, Lcom/sec/android/app/cradle/CradleHomeSettings$SettingAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/cradle/CradleHomeSettings$SettingItem;

    .line 584
    .local v0, item:Lcom/sec/android/app/cradle/CradleHomeSettings$SettingItem;
    iget-boolean v1, v0, Lcom/sec/android/app/cradle/CradleHomeSettings$SettingItem;->mEnabled:Z

    return v1
.end method
