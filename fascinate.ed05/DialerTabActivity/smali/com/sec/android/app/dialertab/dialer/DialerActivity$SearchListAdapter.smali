.class Lcom/sec/android/app/dialertab/dialer/DialerActivity$SearchListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "DialerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/dialertab/dialer/DialerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SearchListAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/sec/android/app/dialertab/dialer/DialerActivity$ContactItem;",
        ">;"
    }
.end annotation


# instance fields
.field private items:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/dialertab/dialer/DialerActivity$ContactItem;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/sec/android/app/dialertab/dialer/DialerActivity;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/dialertab/dialer/DialerActivity;Landroid/content/Context;ILjava/util/ArrayList;)V
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
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/dialertab/dialer/DialerActivity$ContactItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3726
    .local p4, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/dialertab/dialer/DialerActivity$ContactItem;>;"
    iput-object p1, p0, Lcom/sec/android/app/dialertab/dialer/DialerActivity$SearchListAdapter;->this$0:Lcom/sec/android/app/dialertab/dialer/DialerActivity;

    .line 3727
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 3728
    iput-object p4, p0, Lcom/sec/android/app/dialertab/dialer/DialerActivity$SearchListAdapter;->items:Ljava/util/ArrayList;

    .line 3729
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 23
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 3732
    move-object/from16 v21, p2

    .line 3733
    .local v21, v:Landroid/view/View;
    if-nez v21, :cond_0

    .line 3734
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/dialer/DialerActivity$SearchListAdapter;->this$0:Lcom/sec/android/app/dialertab/dialer/DialerActivity;

    move-object v3, v0

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/view/LayoutInflater;

    .line 3735
    .local v22, vi:Landroid/view/LayoutInflater;
    const v3, 0x7f030009

    const/4 v4, 0x0

    move-object/from16 v0, v22

    move v1, v3

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v21

    .line 3748
    .end local v22           #vi:Landroid/view/LayoutInflater;
    :cond_0
    const v3, 0x7f060095

    move-object/from16 v0, v21

    move v1, v3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/LinearLayout;

    .line 3750
    .local v12, mFullnameView:Landroid/widget/LinearLayout;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/dialer/DialerActivity$SearchListAdapter;->items:Ljava/util/ArrayList;

    move-object v3, v0

    move-object v0, v3

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/sec/android/app/dialertab/dialer/DialerActivity$ContactItem;

    .line 3751
    .local v19, ti:Lcom/sec/android/app/dialertab/dialer/DialerActivity$ContactItem;
    invoke-static {}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->access$700()Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->access$1900(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 3752
    .local v9, args_number:Ljava/lang/String;
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v13

    .line 3753
    .local v13, mlength:I
    invoke-virtual/range {v19 .. v19}, Lcom/sec/android/app/dialertab/dialer/DialerActivity$ContactItem;->getNumber()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v18

    .line 3754
    .local v18, temp_length:I
    const/16 v16, 0x0

    .line 3756
    .local v16, photoBm:Landroid/graphics/Bitmap;
    invoke-virtual/range {v19 .. v19}, Lcom/sec/android/app/dialertab/dialer/DialerActivity$ContactItem;->getPhotoID()I

    move-result v3

    if-eqz v3, :cond_2

    .line 3757
    new-instance v15, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v15}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 3758
    .local v15, options:Landroid/graphics/BitmapFactory$Options;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/dialer/DialerActivity$SearchListAdapter;->this$0:Lcom/sec/android/app/dialertab/dialer/DialerActivity;

    move-object v3, v0

    invoke-virtual/range {v19 .. v19}, Lcom/sec/android/app/dialertab/dialer/DialerActivity$ContactItem;->getPhotoID()I

    move-result v4

    int-to-long v5, v4

    invoke-static {v3, v5, v6, v15}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->access$2000(Lcom/sec/android/app/dialertab/dialer/DialerActivity;JLandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v16

    .line 3759
    const v3, 0x7f060093

    move-object/from16 v0, v21

    move v1, v3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .end local p1
    check-cast p1, Landroid/widget/ImageView;

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 3763
    .end local v15           #options:Landroid/graphics/BitmapFactory$Options;
    :goto_0
    invoke-virtual/range {v19 .. v19}, Lcom/sec/android/app/dialertab/dialer/DialerActivity$ContactItem;->getType()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 3848
    .end local p0
    :cond_1
    :goto_1
    return-object v21

    .line 3761
    .restart local p0
    .restart local p1
    :cond_2
    const v3, 0x7f060093

    move-object/from16 v0, v21

    move v1, v3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .end local p1
    check-cast p1, Landroid/widget/ImageView;

    const v3, 0x7f02009d

    move-object/from16 v0, p1

    move v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 3765
    :pswitch_0
    const v3, 0x7f060095

    move-object/from16 v0, v21

    move v1, v3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    move v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3766
    invoke-virtual/range {v19 .. v19}, Lcom/sec/android/app/dialertab/dialer/DialerActivity$ContactItem;->getFullName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 3767
    const v3, 0x7f060096

    move-object/from16 v0, v21

    move v1, v3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    invoke-virtual/range {v19 .. v19}, Lcom/sec/android/app/dialertab/dialer/DialerActivity$ContactItem;->getFullName()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3769
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v12, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3773
    :cond_3
    :goto_2
    const v3, 0x7f060097

    move-object/from16 v0, v21

    move v1, v3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    const-string v3, ""

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3774
    const v3, 0x7f060098

    move-object/from16 v0, v21

    move v1, v3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    const-string v3, ""

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3775
    const v3, 0x7f06009a

    move-object/from16 v0, v21

    move v1, v3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    invoke-virtual/range {v19 .. v19}, Lcom/sec/android/app/dialertab/dialer/DialerActivity$ContactItem;->getNumber()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3776
    const v3, 0x7f06009b

    move-object/from16 v0, v21

    move v1, v3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    const-string v3, ""

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3777
    const v3, 0x7f06009c

    move-object/from16 v0, v21

    move v1, v3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    const-string v3, ""

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 3781
    .restart local p0
    :pswitch_1
    const/4 v3, 0x0

    invoke-virtual {v12, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3782
    const v3, 0x7f060095

    move-object/from16 v0, v21

    move v1, v3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    move-object/from16 v0, p1

    move v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3783
    const v3, 0x7f060096

    move-object/from16 v0, v21

    move v1, v3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const-string v3, ""

    move-object/from16 v0, p1

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3784
    const v3, 0x7f060097

    move-object/from16 v0, v21

    move v1, v3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual/range {v19 .. v19}, Lcom/sec/android/app/dialertab/dialer/DialerActivity$ContactItem;->getFullName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p1

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3785
    const v3, 0x7f060098

    move-object/from16 v0, v21

    move v1, v3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual/range {v19 .. v19}, Lcom/sec/android/app/dialertab/dialer/DialerActivity$ContactItem;->getFullName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p1

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3786
    invoke-virtual/range {v19 .. v19}, Lcom/sec/android/app/dialertab/dialer/DialerActivity$ContactItem;->getNumber()Ljava/lang/String;

    move-result-object v11

    .line 3787
    .local v11, index:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "content://com.android.contacts/contacts/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/data"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 3788
    .local v4, URI_PHONE:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/dialer/DialerActivity$SearchListAdapter;->this$0:Lcom/sec/android/app/dialertab/dialer/DialerActivity;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->access$2100()[Ljava/lang/String;

    move-result-object v5

    const-string v6, "mimetype=\'vnd.android.cursor.item/phone_v2\'"

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 3790
    .local v10, cur_phone:Landroid/database/Cursor;
    if-eqz v10, :cond_5

    .line 3791
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 3792
    const-string v3, "data1"

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 3793
    :cond_4
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 3795
    :cond_5
    const v3, 0x7f06009a

    move-object/from16 v0, v21

    move v1, v3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/widget/TextView;

    move-object/from16 v0, p0

    move-object v1, v11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3796
    const v3, 0x7f06009b

    move-object/from16 v0, v21

    move v1, v3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    const-string v3, ""

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3797
    const v3, 0x7f06009c

    move-object/from16 v0, v21

    move v1, v3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    const-string v3, ""

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 3800
    .end local v4           #URI_PHONE:Landroid/net/Uri;
    .end local v10           #cur_phone:Landroid/database/Cursor;
    .end local v11           #index:Ljava/lang/String;
    .restart local p0
    :pswitch_2
    const v3, 0x7f060095

    move-object/from16 v0, v21

    move v1, v3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    move v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3801
    invoke-virtual/range {v19 .. v19}, Lcom/sec/android/app/dialertab/dialer/DialerActivity$ContactItem;->getFullName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 3804
    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {v12, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V
    :try_end_1
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    .line 3808
    :goto_3
    const v3, 0x7f060096

    move-object/from16 v0, v21

    move v1, v3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    invoke-virtual/range {v19 .. v19}, Lcom/sec/android/app/dialertab/dialer/DialerActivity$ContactItem;->getFullName()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3810
    :cond_6
    const v3, 0x7f060097

    move-object/from16 v0, v21

    move v1, v3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    const-string v3, ""

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3811
    const v3, 0x7f060098

    move-object/from16 v0, v21

    move v1, v3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    const-string v3, ""

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3812
    const v3, 0x7f06009a

    move-object/from16 v0, v21

    move v1, v3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    invoke-virtual/range {v19 .. v19}, Lcom/sec/android/app/dialertab/dialer/DialerActivity$ContactItem;->getNumber()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    move-object v0, v3

    move v1, v4

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3813
    const v3, 0x7f06009b

    move-object/from16 v0, v21

    move v1, v3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    move-object/from16 v0, p0

    move-object v1, v9

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3814
    const v3, 0x7f06009c

    move-object/from16 v0, v21

    move v1, v3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    invoke-virtual/range {v19 .. v19}, Lcom/sec/android/app/dialertab/dialer/DialerActivity$ContactItem;->getNumber()Ljava/lang/String;

    move-result-object v3

    add-int v4, v13, v18

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 3818
    .restart local p0
    :pswitch_3
    invoke-virtual {v12}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_7

    .line 3825
    :cond_7
    const v3, 0x7f060095

    move-object/from16 v0, v21

    move v1, v3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/widget/LinearLayout;

    const/16 v3, 0x8

    move-object/from16 v0, p0

    move v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3826
    const v3, 0x7f06009a

    move-object/from16 v0, v21

    move v1, v3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    invoke-virtual/range {v19 .. v19}, Lcom/sec/android/app/dialertab/dialer/DialerActivity$ContactItem;->getNumber()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    move-object v0, v3

    move v1, v4

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3827
    const v3, 0x7f06009b

    move-object/from16 v0, v21

    move v1, v3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    move-object/from16 v0, p0

    move-object v1, v9

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3830
    add-int v17, v13, v18

    .line 3831
    .local v17, start:I
    invoke-virtual/range {v19 .. v19}, Lcom/sec/android/app/dialertab/dialer/DialerActivity$ContactItem;->getNumber()Ljava/lang/String;

    move-result-object v14

    .line 3832
    .local v14, number:Ljava/lang/String;
    const v3, 0x7f06009c

    move-object/from16 v0, v21

    move v1, v3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/TextView;

    .line 3834
    .local v20, tw:Landroid/widget/TextView;
    if-eqz v20, :cond_1

    .line 3836
    if-ltz v17, :cond_8

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v3

    move/from16 v0, v17

    move v1, v3

    if-le v0, v1, :cond_9

    .line 3837
    :cond_8
    const-string v3, ""

    move-object/from16 v0, v20

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 3839
    :cond_9
    move-object v0, v14

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v20

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 3770
    .end local v14           #number:Ljava/lang/String;
    .end local v17           #start:I
    .end local v20           #tw:Landroid/widget/TextView;
    :catch_0
    move-exception v3

    goto/16 :goto_2

    .line 3805
    :catch_1
    move-exception v3

    goto/16 :goto_3

    .line 3763
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
