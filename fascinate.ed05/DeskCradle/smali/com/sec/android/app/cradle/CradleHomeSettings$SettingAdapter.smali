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
    .line 646
    .local p4, objects:Ljava/util/List;,"Ljava/util/List<Lcom/sec/android/app/cradle/CradleHomeSettings$SettingItem;>;"
    iput-object p1, p0, Lcom/sec/android/app/cradle/CradleHomeSettings$SettingAdapter;->this$0:Lcom/sec/android/app/cradle/CradleHomeSettings;

    .line 647
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 648
    iput p3, p0, Lcom/sec/android/app/cradle/CradleHomeSettings$SettingAdapter;->mResourceId:I

    .line 649
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 20
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 548
    const/4 v14, 0x0

    .line 551
    .local v14, todoView:Landroid/widget/LinearLayout;
    if-nez p2, :cond_3

    .line 552
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/cradle/CradleHomeSettings$SettingAdapter;->getContext()Landroid/content/Context;

    move-result-object v17

    const-string v18, "layout_inflater"

    invoke-virtual/range {v17 .. v18}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/view/LayoutInflater;

    .line 553
    .local v15, vi:Landroid/view/LayoutInflater;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/cradle/CradleHomeSettings$SettingAdapter;->mResourceId:I

    move/from16 v17, v0

    const/16 v18, 0x0

    move-object v0, v15

    move/from16 v1, v17

    move-object/from16 v2, p3

    move/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v14

    .end local v14           #todoView:Landroid/widget/LinearLayout;
    check-cast v14, Landroid/widget/LinearLayout;

    .line 558
    .end local v15           #vi:Landroid/view/LayoutInflater;
    .restart local v14       #todoView:Landroid/widget/LinearLayout;
    :goto_0
    invoke-virtual/range {p0 .. p1}, Lcom/sec/android/app/cradle/CradleHomeSettings$SettingAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/sec/android/app/cradle/CradleHomeSettings$SettingItem;

    .line 560
    .local v9, item:Lcom/sec/android/app/cradle/CradleHomeSettings$SettingItem;
    if-eqz v9, :cond_2

    .line 561
    const v17, 0x7f0a003b

    move-object v0, v14

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 562
    .local v11, mainText:Landroid/widget/TextView;
    const v17, 0x7f0a003c

    move-object v0, v14

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    .line 564
    .local v13, subText:Landroid/widget/TextView;
    move-object v0, v9

    iget-boolean v0, v0, Lcom/sec/android/app/cradle/CradleHomeSettings$SettingItem;->mEnabled:Z

    move/from16 v17, v0

    if-nez v17, :cond_4

    .line 565
    const/16 v17, 0x0

    move-object v0, v11

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 566
    const/16 v17, 0x0

    move-object v0, v13

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 573
    :goto_1
    if-eqz v11, :cond_0

    .line 575
    invoke-virtual {v9}, Lcom/sec/android/app/cradle/CradleHomeSettings$SettingItem;->getMainTitle()Ljava/lang/String;

    move-result-object v17

    move-object v0, v11

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 578
    :cond_0
    if-eqz v13, :cond_1

    .line 579
    invoke-virtual {v9}, Lcom/sec/android/app/cradle/CradleHomeSettings$SettingItem;->getSubTitle()Ljava/lang/String;

    move-result-object v17

    move-object v0, v13

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 582
    :cond_1
    const v17, 0x7f0a0040

    move-object v0, v14

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/CheckBox;

    .line 583
    .local v6, box:Landroid/widget/CheckBox;
    const v17, 0x7f0a003d

    move-object v0, v14

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    .line 584
    .local v8, image:Landroid/widget/ImageView;
    const v17, 0x7f0a003e

    move-object v0, v14

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v16

    .line 585
    .local v16, view:Landroid/view/View;
    const v17, 0x7f0a003f

    move-object v0, v14

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 586
    .local v7, checkLayout:Landroid/view/View;
    const v17, 0x7f0a003b

    move-object v0, v14

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 587
    .local v5, Text:Landroid/widget/TextView;
    invoke-virtual {v9}, Lcom/sec/android/app/cradle/CradleHomeSettings$SettingItem;->getType()I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_5

    .line 589
    const-string v17, "CradleHomeSettings"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "check box is true "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v9}, Lcom/sec/android/app/cradle/CradleHomeSettings$SettingItem;->getMainTitle()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    const/16 v17, 0x0

    move-object v0, v6

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 591
    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->setVisibility(I)V

    .line 592
    const/16 v17, 0x0

    move-object v0, v7

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 593
    const/16 v17, 0x8

    move-object v0, v8

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 594
    move-object v0, v9

    iget-boolean v0, v0, Lcom/sec/android/app/cradle/CradleHomeSettings$SettingItem;->mStateChecked:Z

    move/from16 v17, v0

    move-object v0, v6

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 595
    move/from16 v12, p1

    .line 596
    .local v12, myPosition:I
    new-instance v17, Lcom/sec/android/app/cradle/CradleHomeSettings$SettingAdapter$1;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object v2, v7

    move-object v3, v6

    move v4, v12

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/app/cradle/CradleHomeSettings$SettingAdapter$1;-><init>(Lcom/sec/android/app/cradle/CradleHomeSettings$SettingAdapter;Landroid/view/View;Landroid/widget/CheckBox;I)V

    move-object v0, v7

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 623
    .end local v12           #myPosition:I
    :goto_2
    const v17, 0x7f0a003a

    move-object v0, v14

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/LinearLayout;

    .line 624
    .local v10, mainLinearLayout:Landroid/widget/LinearLayout;
    new-instance v17, Lcom/sec/android/app/cradle/CradleHomeSettings$SettingAdapter$2;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/cradle/CradleHomeSettings$SettingAdapter$2;-><init>(Lcom/sec/android/app/cradle/CradleHomeSettings$SettingAdapter;Landroid/widget/TextView;)V

    move-object v0, v10

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 643
    .end local v5           #Text:Landroid/widget/TextView;
    .end local v6           #box:Landroid/widget/CheckBox;
    .end local v7           #checkLayout:Landroid/view/View;
    .end local v8           #image:Landroid/widget/ImageView;
    .end local v10           #mainLinearLayout:Landroid/widget/LinearLayout;
    .end local v11           #mainText:Landroid/widget/TextView;
    .end local v13           #subText:Landroid/widget/TextView;
    .end local v16           #view:Landroid/view/View;
    :cond_2
    return-object v14

    .line 555
    .end local v9           #item:Lcom/sec/android/app/cradle/CradleHomeSettings$SettingItem;
    :cond_3
    move-object/from16 v0, p2

    check-cast v0, Landroid/widget/LinearLayout;

    move-object v14, v0

    goto/16 :goto_0

    .line 569
    .restart local v9       #item:Lcom/sec/android/app/cradle/CradleHomeSettings$SettingItem;
    .restart local v11       #mainText:Landroid/widget/TextView;
    .restart local v13       #subText:Landroid/widget/TextView;
    :cond_4
    const/16 v17, 0x1

    move-object v0, v11

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 570
    const/16 v17, 0x1

    move-object v0, v13

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    goto/16 :goto_1

    .line 618
    .restart local v5       #Text:Landroid/widget/TextView;
    .restart local v6       #box:Landroid/widget/CheckBox;
    .restart local v7       #checkLayout:Landroid/view/View;
    .restart local v8       #image:Landroid/widget/ImageView;
    .restart local v16       #view:Landroid/view/View;
    :cond_5
    const/16 v17, 0x8

    move-object v0, v6

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 619
    const/16 v17, 0x8

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->setVisibility(I)V

    .line 620
    const/16 v17, 0x8

    move-object v0, v7

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 621
    const/16 v17, 0x0

    move-object v0, v8

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2
.end method

.method public isEnabled(I)Z
    .locals 2
    .parameter "position"

    .prologue
    .line 542
    invoke-virtual {p0, p1}, Lcom/sec/android/app/cradle/CradleHomeSettings$SettingAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/cradle/CradleHomeSettings$SettingItem;

    .line 543
    .local v0, item:Lcom/sec/android/app/cradle/CradleHomeSettings$SettingItem;
    iget-boolean v1, v0, Lcom/sec/android/app/cradle/CradleHomeSettings$SettingItem;->mEnabled:Z

    return v1
.end method
