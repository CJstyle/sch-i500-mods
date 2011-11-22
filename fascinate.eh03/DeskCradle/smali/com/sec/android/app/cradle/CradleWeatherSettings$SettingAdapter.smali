.class public Lcom/sec/android/app/cradle/CradleWeatherSettings$SettingAdapter;
.super Landroid/widget/ArrayAdapter;
.source "CradleWeatherSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/cradle/CradleWeatherSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SettingAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/sec/android/app/cradle/CradleWeatherSettings$SettingItem;",
        ">;"
    }
.end annotation


# instance fields
.field private mResourceId:I

.field final synthetic this$0:Lcom/sec/android/app/cradle/CradleWeatherSettings;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/cradle/CradleWeatherSettings;Landroid/content/Context;ILjava/util/List;)V
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
            "Lcom/sec/android/app/cradle/CradleWeatherSettings$SettingItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 657
    .local p4, objects:Ljava/util/List;,"Ljava/util/List<Lcom/sec/android/app/cradle/CradleWeatherSettings$SettingItem;>;"
    iput-object p1, p0, Lcom/sec/android/app/cradle/CradleWeatherSettings$SettingAdapter;->this$0:Lcom/sec/android/app/cradle/CradleWeatherSettings;

    .line 658
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 659
    iput p3, p0, Lcom/sec/android/app/cradle/CradleWeatherSettings$SettingAdapter;->mResourceId:I

    .line 660
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 18
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 561
    const/4 v15, 0x0

    .line 564
    .local v15, todoView:Landroid/widget/LinearLayout;
    if-nez p2, :cond_3

    .line 565
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/cradle/CradleWeatherSettings$SettingAdapter;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "layout_inflater"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/view/LayoutInflater;

    .line 566
    .local v16, vi:Landroid/view/LayoutInflater;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/cradle/CradleWeatherSettings$SettingAdapter;->mResourceId:I

    move v4, v0

    const/4 v5, 0x0

    move-object/from16 v0, v16

    move v1, v4

    move-object/from16 v2, p3

    move v3, v5

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v15

    .end local v15           #todoView:Landroid/widget/LinearLayout;
    check-cast v15, Landroid/widget/LinearLayout;

    .line 571
    .end local v16           #vi:Landroid/view/LayoutInflater;
    .restart local v15       #todoView:Landroid/widget/LinearLayout;
    :goto_0
    invoke-virtual/range {p0 .. p1}, Lcom/sec/android/app/cradle/CradleWeatherSettings$SettingAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sec/android/app/cradle/CradleWeatherSettings$SettingItem;

    .line 573
    .local v8, item:Lcom/sec/android/app/cradle/CradleWeatherSettings$SettingItem;
    if-eqz v8, :cond_2

    .line 574
    const v4, 0x7f0a003b

    invoke-virtual {v15, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    .line 575
    .local v13, mainText:Landroid/widget/TextView;
    const v4, 0x7f0a003c

    invoke-virtual {v15, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 577
    .local v14, subText:Landroid/widget/TextView;
    iget-boolean v4, v8, Lcom/sec/android/app/cradle/CradleWeatherSettings$SettingItem;->mEnabled:Z

    if-nez v4, :cond_4

    .line 578
    const/4 v4, 0x0

    invoke-virtual {v13, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 579
    const/4 v4, 0x0

    invoke-virtual {v14, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 586
    :goto_1
    if-eqz v13, :cond_0

    .line 588
    invoke-virtual {v8}, Lcom/sec/android/app/cradle/CradleWeatherSettings$SettingItem;->getMainTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v13, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 591
    :cond_0
    if-eqz v14, :cond_1

    .line 592
    invoke-virtual {v8}, Lcom/sec/android/app/cradle/CradleWeatherSettings$SettingItem;->getSubTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v14, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 595
    :cond_1
    const v4, 0x7f0a0040

    invoke-virtual {v15, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/CheckBox;

    .line 596
    .local v7, box:Landroid/widget/CheckBox;
    const v4, 0x7f0a003d

    invoke-virtual {v15, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageView;

    .line 597
    .local v11, image:Landroid/widget/ImageView;
    const v4, 0x7f0a003e

    invoke-virtual {v15, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v17

    .line 598
    .local v17, view:Landroid/view/View;
    const v4, 0x7f0a003f

    invoke-virtual {v15, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 599
    .local v6, checkLayout:Landroid/view/View;
    const v4, 0x7f0a003b

    invoke-virtual {v15, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 600
    .local v10, Text:Landroid/widget/TextView;
    invoke-virtual {v8}, Lcom/sec/android/app/cradle/CradleWeatherSettings$SettingItem;->getType()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_5

    .line 602
    const-string v4, "CradleWeatherSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "check box is true "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v8}, Lcom/sec/android/app/cradle/CradleWeatherSettings$SettingItem;->getMainTitle()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    const/4 v4, 0x0

    invoke-virtual {v7, v4}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 604
    const/4 v4, 0x0

    move-object/from16 v0, v17

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 605
    const/4 v4, 0x0

    invoke-virtual {v6, v4}, Landroid/view/View;->setVisibility(I)V

    .line 606
    const/16 v4, 0x8

    invoke-virtual {v11, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 607
    iget-boolean v4, v8, Lcom/sec/android/app/cradle/CradleWeatherSettings$SettingItem;->mStateChecked:Z

    invoke-virtual {v7, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 608
    move/from16 v9, p1

    .line 609
    .local v9, myPosition:I
    new-instance v4, Lcom/sec/android/app/cradle/CradleWeatherSettings$SettingAdapter$1;

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v9}, Lcom/sec/android/app/cradle/CradleWeatherSettings$SettingAdapter$1;-><init>(Lcom/sec/android/app/cradle/CradleWeatherSettings$SettingAdapter;Landroid/view/View;Landroid/widget/CheckBox;Lcom/sec/android/app/cradle/CradleWeatherSettings$SettingItem;I)V

    invoke-virtual {v6, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 635
    .end local v9           #myPosition:I
    :goto_2
    const v4, 0x7f0a003a

    invoke-virtual {v15, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/LinearLayout;

    .line 636
    .local v12, mainLinearLayout:Landroid/widget/LinearLayout;
    new-instance v4, Lcom/sec/android/app/cradle/CradleWeatherSettings$SettingAdapter$2;

    move-object v0, v4

    move-object/from16 v1, p0

    move-object v2, v10

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/cradle/CradleWeatherSettings$SettingAdapter$2;-><init>(Lcom/sec/android/app/cradle/CradleWeatherSettings$SettingAdapter;Landroid/widget/TextView;)V

    invoke-virtual {v12, v4}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 654
    .end local v6           #checkLayout:Landroid/view/View;
    .end local v7           #box:Landroid/widget/CheckBox;
    .end local v10           #Text:Landroid/widget/TextView;
    .end local v11           #image:Landroid/widget/ImageView;
    .end local v12           #mainLinearLayout:Landroid/widget/LinearLayout;
    .end local v13           #mainText:Landroid/widget/TextView;
    .end local v14           #subText:Landroid/widget/TextView;
    .end local v17           #view:Landroid/view/View;
    :cond_2
    return-object v15

    .line 568
    .end local v8           #item:Lcom/sec/android/app/cradle/CradleWeatherSettings$SettingItem;
    :cond_3
    move-object/from16 v0, p2

    check-cast v0, Landroid/widget/LinearLayout;

    move-object v15, v0

    goto/16 :goto_0

    .line 582
    .restart local v8       #item:Lcom/sec/android/app/cradle/CradleWeatherSettings$SettingItem;
    .restart local v13       #mainText:Landroid/widget/TextView;
    .restart local v14       #subText:Landroid/widget/TextView;
    :cond_4
    const/4 v4, 0x1

    invoke-virtual {v13, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 583
    const/4 v4, 0x1

    invoke-virtual {v14, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    goto/16 :goto_1

    .line 630
    .restart local v6       #checkLayout:Landroid/view/View;
    .restart local v7       #box:Landroid/widget/CheckBox;
    .restart local v10       #Text:Landroid/widget/TextView;
    .restart local v11       #image:Landroid/widget/ImageView;
    .restart local v17       #view:Landroid/view/View;
    :cond_5
    const/16 v4, 0x8

    invoke-virtual {v7, v4}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 631
    const/16 v4, 0x8

    move-object/from16 v0, v17

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 632
    const/16 v4, 0x8

    invoke-virtual {v6, v4}, Landroid/view/View;->setVisibility(I)V

    .line 633
    const/4 v4, 0x0

    invoke-virtual {v11, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2
.end method

.method public isEnabled(I)Z
    .locals 2
    .parameter "position"

    .prologue
    .line 555
    invoke-virtual {p0, p1}, Lcom/sec/android/app/cradle/CradleWeatherSettings$SettingAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/cradle/CradleWeatherSettings$SettingItem;

    .line 556
    .local v0, item:Lcom/sec/android/app/cradle/CradleWeatherSettings$SettingItem;
    iget-boolean v1, v0, Lcom/sec/android/app/cradle/CradleWeatherSettings$SettingItem;->mEnabled:Z

    return v1
.end method
