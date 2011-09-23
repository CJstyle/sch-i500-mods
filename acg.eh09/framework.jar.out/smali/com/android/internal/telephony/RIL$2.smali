.class Lcom/android/internal/telephony/RIL$2;
.super Landroid/os/Handler;
.source "RIL.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/RIL;-><init>(Landroid/content/Context;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/RIL;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/RIL;)V
    .locals 0
    .parameter

    .prologue
    .line 757
    iput-object p1, p0, Lcom/android/internal/telephony/RIL$2;->this$0:Lcom/android/internal/telephony/RIL;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method private getItemData(I)V
    .locals 19
    .parameter "item_idx"

    .prologue
    .line 763
    const/16 v17, 0x0

    .line 765
    .local v17, retData_num:I
    sparse-switch p1, :sswitch_data_0

    .line 1065
    :goto_0
    :sswitch_0
    return-void

    .line 769
    :sswitch_1
    const-string/jumbo v4, "persist.sys.language"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 771
    .local v15, retData:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$2;->this$0:Lcom/android/internal/telephony/RIL;

    move-object v4, v0

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v5

    move-object v0, v4

    move/from16 v1, p1

    move v2, v5

    move-object v3, v15

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/RIL;->sendPSTGetItemData(IILjava/lang/String;)V

    goto :goto_0

    .line 778
    .end local v15           #retData:Ljava/lang/String;
    :sswitch_2
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$2;->this$0:Lcom/android/internal/telephony/RIL;

    move-object v4, v0

    invoke-static {v4}, Lcom/android/internal/telephony/RIL;->access$700(Lcom/android/internal/telephony/RIL;)Landroid/content/Context;

    move-result-object v4

    const-string v5, "call_restriction"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v5, "auto_answer_preference"

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v17

    .line 779
    if-nez v17, :cond_0

    .line 780
    const-string/jumbo v15, "num0"

    .line 790
    .restart local v15       #retData:Ljava/lang/String;
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$2;->this$0:Lcom/android/internal/telephony/RIL;

    move-object v4, v0

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v5

    move-object v0, v4

    move/from16 v1, p1

    move v2, v5

    move-object v3, v15

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/RIL;->sendPSTGetItemData(IILjava/lang/String;)V

    goto :goto_0

    .line 791
    .end local v15           #retData:Ljava/lang/String;
    :catch_0
    move-exception v4

    goto :goto_0

    .line 781
    :cond_0
    const/4 v4, 0x1

    move/from16 v0, v17

    move v1, v4

    if-ne v0, v1, :cond_1

    .line 782
    const-string/jumbo v15, "num1"

    .restart local v15       #retData:Ljava/lang/String;
    goto :goto_1

    .line 783
    .end local v15           #retData:Ljava/lang/String;
    :cond_1
    const/4 v4, 0x2

    move/from16 v0, v17

    move v1, v4

    if-ne v0, v1, :cond_2

    .line 784
    const-string/jumbo v15, "num2"

    .restart local v15       #retData:Ljava/lang/String;
    goto :goto_1

    .line 786
    .end local v15           #retData:Ljava/lang/String;
    :cond_2
    const-string/jumbo v15, "num3"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .restart local v15       #retData:Ljava/lang/String;
    goto :goto_1

    .line 798
    .end local v15           #retData:Ljava/lang/String;
    :sswitch_3
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$2;->this$0:Lcom/android/internal/telephony/RIL;

    move-object v4, v0

    invoke-static {v4}, Lcom/android/internal/telephony/RIL;->access$700(Lcom/android/internal/telephony/RIL;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "screen_off_timeout"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v18

    .line 799
    .local v18, retData_num_temp:I
    const/16 v4, 0x3a98

    move/from16 v0, v18

    move v1, v4

    if-ne v0, v1, :cond_3

    .line 800
    const-string/jumbo v15, "num0"

    .line 813
    .restart local v15       #retData:Ljava/lang/String;
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$2;->this$0:Lcom/android/internal/telephony/RIL;

    move-object v4, v0

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v5

    move-object v0, v4

    move/from16 v1, p1

    move v2, v5

    move-object v3, v15

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/RIL;->sendPSTGetItemData(IILjava/lang/String;)V

    goto/16 :goto_0

    .line 814
    .end local v15           #retData:Ljava/lang/String;
    .end local v18           #retData_num_temp:I
    :catch_1
    move-exception v4

    goto/16 :goto_0

    .line 801
    .restart local v18       #retData_num_temp:I
    :cond_3
    const/16 v4, 0x7530

    move/from16 v0, v18

    move v1, v4

    if-ne v0, v1, :cond_4

    .line 802
    const-string/jumbo v15, "num1"

    .restart local v15       #retData:Ljava/lang/String;
    goto :goto_2

    .line 803
    .end local v15           #retData:Ljava/lang/String;
    :cond_4
    const v4, 0xea60

    move/from16 v0, v18

    move v1, v4

    if-ne v0, v1, :cond_5

    .line 804
    const-string/jumbo v15, "num2"

    .restart local v15       #retData:Ljava/lang/String;
    goto :goto_2

    .line 805
    .end local v15           #retData:Ljava/lang/String;
    :cond_5
    const v4, 0x1d4c0

    move/from16 v0, v18

    move v1, v4

    if-ne v0, v1, :cond_6

    .line 806
    const-string/jumbo v15, "num3"

    .restart local v15       #retData:Ljava/lang/String;
    goto :goto_2

    .line 807
    .end local v15           #retData:Ljava/lang/String;
    :cond_6
    const v4, 0x927c0

    move/from16 v0, v18

    move v1, v4

    if-ne v0, v1, :cond_7

    .line 808
    const-string/jumbo v15, "num4"

    .restart local v15       #retData:Ljava/lang/String;
    goto :goto_2

    .line 810
    .end local v15           #retData:Ljava/lang/String;
    :cond_7
    const-string/jumbo v15, "num5"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .restart local v15       #retData:Ljava/lang/String;
    goto :goto_2

    .line 824
    .end local v15           #retData:Ljava/lang/String;
    .end local v18           #retData_num_temp:I
    :sswitch_4
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$2;->this$0:Lcom/android/internal/telephony/RIL;

    move-object v4, v0

    invoke-static {v4}, Lcom/android/internal/telephony/RIL;->access$700(Lcom/android/internal/telephony/RIL;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "dtmf_tone_type"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v16

    .line 825
    .local v16, retData2:I
    if-nez v16, :cond_8

    .line 826
    const-string v15, "Normal"

    .line 830
    .restart local v15       #retData:Ljava/lang/String;
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$2;->this$0:Lcom/android/internal/telephony/RIL;

    move-object v4, v0

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v5

    move-object v0, v4

    move/from16 v1, p1

    move v2, v5

    move-object v3, v15

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/RIL;->sendPSTGetItemData(IILjava/lang/String;)V

    goto/16 :goto_0

    .line 831
    .end local v15           #retData:Ljava/lang/String;
    .end local v16           #retData2:I
    :catch_2
    move-exception v4

    goto/16 :goto_0

    .line 828
    .restart local v16       #retData2:I
    :cond_8
    const-string v15, "Long"
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .restart local v15       #retData:Ljava/lang/String;
    goto :goto_3

    .line 841
    .end local v15           #retData:Ljava/lang/String;
    .end local v16           #retData2:I
    :sswitch_5
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$2;->this$0:Lcom/android/internal/telephony/RIL;

    move-object v4, v0

    invoke-static {v4}, Lcom/android/internal/telephony/RIL;->access$700(Lcom/android/internal/telephony/RIL;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "call_auto_retry"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v16

    .line 842
    .restart local v16       #retData2:I
    if-nez v16, :cond_9

    .line 843
    const-string v15, "Disable"

    .line 847
    .restart local v15       #retData:Ljava/lang/String;
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$2;->this$0:Lcom/android/internal/telephony/RIL;

    move-object v4, v0

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v5

    move-object v0, v4

    move/from16 v1, p1

    move v2, v5

    move-object v3, v15

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/RIL;->sendPSTGetItemData(IILjava/lang/String;)V

    goto/16 :goto_0

    .line 848
    .end local v15           #retData:Ljava/lang/String;
    .end local v16           #retData2:I
    :catch_3
    move-exception v4

    goto/16 :goto_0

    .line 845
    .restart local v16       #retData2:I
    :cond_9
    const-string v15, "Enable"
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .restart local v15       #retData:Ljava/lang/String;
    goto :goto_4

    .line 857
    .end local v15           #retData:Ljava/lang/String;
    .end local v16           #retData2:I
    :sswitch_6
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$2;->this$0:Lcom/android/internal/telephony/RIL;

    move-object v4, v0

    invoke-static {v4}, Lcom/android/internal/telephony/RIL;->access$700(Lcom/android/internal/telephony/RIL;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "carrier_wallpaper"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v16

    .line 858
    .restart local v16       #retData2:I
    if-nez v16, :cond_a

    .line 859
    const-string v15, "Disable"

    .line 863
    .restart local v15       #retData:Ljava/lang/String;
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$2;->this$0:Lcom/android/internal/telephony/RIL;

    move-object v4, v0

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v5

    move-object v0, v4

    move/from16 v1, p1

    move v2, v5

    move-object v3, v15

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/RIL;->sendPSTGetItemData(IILjava/lang/String;)V

    goto/16 :goto_0

    .line 864
    .end local v15           #retData:Ljava/lang/String;
    .end local v16           #retData2:I
    :catch_4
    move-exception v4

    goto/16 :goto_0

    .line 861
    .restart local v16       #retData2:I
    :cond_a
    const-string v15, "Enable"
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .restart local v15       #retData:Ljava/lang/String;
    goto :goto_5

    .line 873
    .end local v15           #retData:Ljava/lang/String;
    .end local v16           #retData2:I
    :sswitch_7
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$2;->this$0:Lcom/android/internal/telephony/RIL;

    move-object v4, v0

    invoke-static {v4}, Lcom/android/internal/telephony/RIL;->access$700(Lcom/android/internal/telephony/RIL;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "carrier_power_onoff"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v16

    .line 874
    .restart local v16       #retData2:I
    if-nez v16, :cond_b

    .line 875
    const-string v15, "Disable"

    .line 879
    .restart local v15       #retData:Ljava/lang/String;
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$2;->this$0:Lcom/android/internal/telephony/RIL;

    move-object v4, v0

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v5

    move-object v0, v4

    move/from16 v1, p1

    move v2, v5

    move-object v3, v15

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/RIL;->sendPSTGetItemData(IILjava/lang/String;)V

    goto/16 :goto_0

    .line 880
    .end local v15           #retData:Ljava/lang/String;
    .end local v16           #retData2:I
    :catch_5
    move-exception v4

    goto/16 :goto_0

    .line 877
    .restart local v16       #retData2:I
    :cond_b
    const-string v15, "Enable"
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    .restart local v15       #retData:Ljava/lang/String;
    goto :goto_6

    .line 891
    .end local v15           #retData:Ljava/lang/String;
    .end local v16           #retData2:I
    :sswitch_8
    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$2;->this$0:Lcom/android/internal/telephony/RIL;

    move-object v4, v0

    invoke-static {v4}, Lcom/android/internal/telephony/RIL;->access$700(Lcom/android/internal/telephony/RIL;)Landroid/content/Context;

    move-result-object v4

    const-string v5, "audio"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/media/AudioManager;

    .line 893
    .local v10, audioManager:Landroid/media/AudioManager;
    const/4 v4, 0x2

    invoke-virtual {v10, v4}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v16

    .line 895
    .restart local v16       #retData2:I
    const/16 v4, 0xa

    move/from16 v0, v16

    move v1, v4

    if-lt v0, v1, :cond_c

    .line 897
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 905
    .restart local v15       #retData:Ljava/lang/String;
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$2;->this$0:Lcom/android/internal/telephony/RIL;

    move-object v4, v0

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v5

    move-object v0, v4

    move/from16 v1, p1

    move v2, v5

    move-object v3, v15

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/RIL;->sendPSTGetItemData(IILjava/lang/String;)V

    goto/16 :goto_0

    .line 906
    .end local v10           #audioManager:Landroid/media/AudioManager;
    .end local v15           #retData:Ljava/lang/String;
    .end local v16           #retData2:I
    :catch_6
    move-exception v4

    goto/16 :goto_0

    .line 901
    .restart local v10       #audioManager:Landroid/media/AudioManager;
    .restart local v16       #retData2:I
    :cond_c
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    move-result-object v15

    .restart local v15       #retData:Ljava/lang/String;
    goto :goto_7

    .line 915
    .end local v10           #audioManager:Landroid/media/AudioManager;
    .end local v15           #retData:Ljava/lang/String;
    .end local v16           #retData2:I
    :sswitch_9
    :try_start_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$2;->this$0:Lcom/android/internal/telephony/RIL;

    move-object v4, v0

    invoke-static {v4}, Lcom/android/internal/telephony/RIL;->access$700(Lcom/android/internal/telephony/RIL;)Landroid/content/Context;

    move-result-object v4

    const-string v5, "audio"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/media/AudioManager;

    .line 917
    .restart local v10       #audioManager:Landroid/media/AudioManager;
    const/4 v4, 0x3

    invoke-virtual {v10, v4}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v16

    .line 919
    .restart local v16       #retData2:I
    const/16 v4, 0xa

    move/from16 v0, v16

    move v1, v4

    if-lt v0, v1, :cond_d

    .line 921
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v15

    .line 929
    .restart local v15       #retData:Ljava/lang/String;
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$2;->this$0:Lcom/android/internal/telephony/RIL;

    move-object v4, v0

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v5

    move-object v0, v4

    move/from16 v1, p1

    move v2, v5

    move-object v3, v15

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/RIL;->sendPSTGetItemData(IILjava/lang/String;)V

    goto/16 :goto_0

    .line 930
    .end local v10           #audioManager:Landroid/media/AudioManager;
    .end local v15           #retData:Ljava/lang/String;
    .end local v16           #retData2:I
    :catch_7
    move-exception v4

    goto/16 :goto_0

    .line 925
    .restart local v10       #audioManager:Landroid/media/AudioManager;
    .restart local v16       #retData2:I
    :cond_d
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    move-result-object v15

    .restart local v15       #retData:Ljava/lang/String;
    goto :goto_8

    .line 940
    .end local v10           #audioManager:Landroid/media/AudioManager;
    .end local v15           #retData:Ljava/lang/String;
    .end local v16           #retData2:I
    :sswitch_a
    :try_start_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$2;->this$0:Lcom/android/internal/telephony/RIL;

    move-object v4, v0

    invoke-static {v4}, Lcom/android/internal/telephony/RIL;->access$700(Lcom/android/internal/telephony/RIL;)Landroid/content/Context;

    move-result-object v4

    sget-object v5, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI:Landroid/net/Uri;

    invoke-static {v4, v5}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v13

    .line 942
    .local v13, mRingtone:Landroid/media/Ringtone;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$2;->this$0:Lcom/android/internal/telephony/RIL;

    move-object v4, v0

    invoke-static {v4}, Lcom/android/internal/telephony/RIL;->access$700(Lcom/android/internal/telephony/RIL;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v13, v4}, Landroid/media/Ringtone;->getTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v15

    .line 944
    .restart local v15       #retData:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$2;->this$0:Lcom/android/internal/telephony/RIL;

    move-object v4, v0

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v5

    move-object v0, v4

    move/from16 v1, p1

    move v2, v5

    move-object v3, v15

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/RIL;->sendPSTGetItemData(IILjava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_8

    goto/16 :goto_0

    .line 945
    .end local v13           #mRingtone:Landroid/media/Ringtone;
    .end local v15           #retData:Ljava/lang/String;
    :catch_8
    move-exception v4

    move-object v12, v4

    .line 947
    .local v12, e:Ljava/lang/Exception;
    const-string v15, "Slient"

    .line 949
    .restart local v15       #retData:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$2;->this$0:Lcom/android/internal/telephony/RIL;

    move-object v4, v0

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v5

    move-object v0, v4

    move/from16 v1, p1

    move v2, v5

    move-object v3, v15

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/RIL;->sendPSTGetItemData(IILjava/lang/String;)V

    goto/16 :goto_0

    .line 958
    .end local v12           #e:Ljava/lang/Exception;
    .end local v15           #retData:Ljava/lang/String;
    :sswitch_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$2;->this$0:Lcom/android/internal/telephony/RIL;

    move-object v4, v0

    invoke-static {v4}, Lcom/android/internal/telephony/RIL;->access$700(Lcom/android/internal/telephony/RIL;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 959
    .local v11, cursor:Landroid/database/Cursor;
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    .line 960
    const-string v4, "mmsc"

    invoke-interface {v11, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v11, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 963
    .restart local v15       #retData:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$2;->this$0:Lcom/android/internal/telephony/RIL;

    move-object v4, v0

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v5

    move-object v0, v4

    move/from16 v1, p1

    move v2, v5

    move-object v3, v15

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/RIL;->sendPSTGetItemData(IILjava/lang/String;)V

    goto/16 :goto_0

    .line 972
    .end local v11           #cursor:Landroid/database/Cursor;
    .end local v15           #retData:Ljava/lang/String;
    :sswitch_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$2;->this$0:Lcom/android/internal/telephony/RIL;

    move-object v4, v0

    invoke-static {v4}, Lcom/android/internal/telephony/RIL;->access$700(Lcom/android/internal/telephony/RIL;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "mms_user_agent"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 975
    .restart local v15       #retData:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$2;->this$0:Lcom/android/internal/telephony/RIL;

    move-object v4, v0

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v5

    move-object v0, v4

    move/from16 v1, p1

    move v2, v5

    move-object v3, v15

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/RIL;->sendPSTGetItemData(IILjava/lang/String;)V

    goto/16 :goto_0

    .line 983
    .end local v15           #retData:Ljava/lang/String;
    :sswitch_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$2;->this$0:Lcom/android/internal/telephony/RIL;

    move-object v4, v0

    invoke-static {v4}, Lcom/android/internal/telephony/RIL;->access$700(Lcom/android/internal/telephony/RIL;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "mms_x_wap_profile_url"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 986
    .restart local v15       #retData:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$2;->this$0:Lcom/android/internal/telephony/RIL;

    move-object v4, v0

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v5

    move-object v0, v4

    move/from16 v1, p1

    move v2, v5

    move-object v3, v15

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/RIL;->sendPSTGetItemData(IILjava/lang/String;)V

    goto/16 :goto_0

    .line 993
    .end local v15           #retData:Ljava/lang/String;
    :sswitch_e
    :try_start_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$2;->this$0:Lcom/android/internal/telephony/RIL;

    move-object v4, v0

    invoke-static {v4}, Lcom/android/internal/telephony/RIL;->access$700(Lcom/android/internal/telephony/RIL;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "mms_post_url"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 996
    .restart local v15       #retData:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$2;->this$0:Lcom/android/internal/telephony/RIL;

    move-object v4, v0

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v5

    move-object v0, v4

    move/from16 v1, p1

    move v2, v5

    move-object v3, v15

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/RIL;->sendPSTGetItemData(IILjava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_9

    goto/16 :goto_0

    .line 997
    .end local v15           #retData:Ljava/lang/String;
    :catch_9
    move-exception v4

    goto/16 :goto_0

    .line 1003
    :sswitch_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$2;->this$0:Lcom/android/internal/telephony/RIL;

    move-object v4, v0

    invoke-static {v4}, Lcom/android/internal/telephony/RIL;->access$700(Lcom/android/internal/telephony/RIL;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "mms_subscriber_id"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 1006
    .restart local v15       #retData:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$2;->this$0:Lcom/android/internal/telephony/RIL;

    move-object v4, v0

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v5

    move-object v0, v4

    move/from16 v1, p1

    move v2, v5

    move-object v3, v15

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/RIL;->sendPSTGetItemData(IILjava/lang/String;)V

    goto/16 :goto_0

    .line 1014
    .end local v15           #retData:Ljava/lang/String;
    :sswitch_10
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getDataDunEnabled()Z

    move-result v4

    if-eqz v4, :cond_e

    .line 1017
    const-string v15, "Enable"

    .line 1026
    .restart local v15       #retData:Ljava/lang/String;
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$2;->this$0:Lcom/android/internal/telephony/RIL;

    move-object v4, v0

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v5

    move-object v0, v4

    move/from16 v1, p1

    move v2, v5

    move-object v3, v15

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/RIL;->sendPSTGetItemData(IILjava/lang/String;)V

    goto/16 :goto_0

    .line 1022
    .end local v15           #retData:Ljava/lang/String;
    :cond_e
    const-string v15, "Disable"

    .restart local v15       #retData:Ljava/lang/String;
    goto :goto_9

    .line 1038
    .end local v15           #retData:Ljava/lang/String;
    :sswitch_11
    const-string v4, "gsm.sim.operator.numeric"

    const-string v5, "310000"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 1040
    .restart local v15       #retData:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$2;->this$0:Lcom/android/internal/telephony/RIL;

    move-object v4, v0

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v5

    move-object v0, v4

    move/from16 v1, p1

    move v2, v5

    move-object v3, v15

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/RIL;->sendPSTGetItemData(IILjava/lang/String;)V

    goto/16 :goto_0

    .line 1047
    .end local v15           #retData:Ljava/lang/String;
    :sswitch_12
    const-string v4, "gsm.sim.operator.alpha"

    const-string v5, "Default"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 1049
    .restart local v15       #retData:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$2;->this$0:Lcom/android/internal/telephony/RIL;

    move-object v4, v0

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v5

    move-object v0, v4

    move/from16 v1, p1

    move v2, v5

    move-object v3, v15

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/RIL;->sendPSTGetItemData(IILjava/lang/String;)V

    goto/16 :goto_0

    .line 1056
    .end local v15           #retData:Ljava/lang/String;
    :sswitch_13
    invoke-static {}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getCDMAPhoneContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v14

    .line 1057
    .local v14, pref_voicemail_num:Landroid/content/SharedPreferences;
    const-string/jumbo v4, "vm_number_key_cdma"

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getLine1Number()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v14, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 1058
    .restart local v15       #retData:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$2;->this$0:Lcom/android/internal/telephony/RIL;

    move-object v4, v0

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v5

    move-object v0, v4

    move/from16 v1, p1

    move v2, v5

    move-object v3, v15

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/RIL;->sendPSTGetItemData(IILjava/lang/String;)V

    goto/16 :goto_0

    .line 765
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x11 -> :sswitch_6
        0x12 -> :sswitch_7
        0x33 -> :sswitch_8
        0x34 -> :sswitch_9
        0x35 -> :sswitch_a
        0x65 -> :sswitch_b
        0x66 -> :sswitch_c
        0x67 -> :sswitch_d
        0x68 -> :sswitch_e
        0x69 -> :sswitch_f
        0x73 -> :sswitch_13
        0x76 -> :sswitch_0
        0x7e -> :sswitch_10
        0x7f -> :sswitch_11
        0x80 -> :sswitch_12
    .end sparse-switch
.end method

.method private setItemData(II)V
    .locals 5
    .parameter "item_idx"
    .parameter "data"

    .prologue
    const/4 v3, 0x0

    const-string v4, "audio"

    .line 1452
    packed-switch p1, :pswitch_data_0

    .line 1474
    :goto_0
    return-void

    .line 1456
    :pswitch_0
    iget-object v1, p0, Lcom/android/internal/telephony/RIL$2;->this$0:Lcom/android/internal/telephony/RIL;

    invoke-static {v1}, Lcom/android/internal/telephony/RIL;->access$700(Lcom/android/internal/telephony/RIL;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "audio"

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 1458
    .local v0, audioManager:Landroid/media/AudioManager;
    const/4 v1, 0x2

    invoke-virtual {v0, v1, p2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    goto :goto_0

    .line 1464
    .end local v0           #audioManager:Landroid/media/AudioManager;
    :pswitch_1
    iget-object v1, p0, Lcom/android/internal/telephony/RIL$2;->this$0:Lcom/android/internal/telephony/RIL;

    invoke-static {v1}, Lcom/android/internal/telephony/RIL;->access$700(Lcom/android/internal/telephony/RIL;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "audio"

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 1466
    .restart local v0       #audioManager:Landroid/media/AudioManager;
    const/4 v1, 0x3

    invoke-virtual {v0, v1, p2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    goto :goto_0

    .line 1452
    nop

    :pswitch_data_0
    .packed-switch 0x33
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private setItemData(ILjava/lang/String;)V
    .locals 33
    .parameter "item_idx"
    .parameter "data"

    .prologue
    .line 1068
    new-instance v27, Landroid/content/ContentValues;

    invoke-direct/range {v27 .. v27}, Landroid/content/ContentValues;-><init>()V

    .line 1071
    .local v27, values:Landroid/content/ContentValues;
    sparse-switch p1, :sswitch_data_0

    .line 1447
    :cond_0
    :goto_0
    return-void

    .line 1077
    :sswitch_0
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v5

    .line 1078
    .local v5, am:Landroid/app/IActivityManager;
    invoke-interface {v5}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    .line 1079
    .local v8, config:Landroid/content/res/Configuration;
    new-instance v29, Ljava/util/Locale;

    const-string v30, "US"

    move-object/from16 v0, v29

    move-object/from16 v1, p2

    move-object/from16 v2, v30

    invoke-direct {v0, v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v29

    move-object v1, v8

    iput-object v0, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 1080
    const/16 v29, 0x1

    move/from16 v0, v29

    move-object v1, v8

    iput-boolean v0, v1, Landroid/content/res/Configuration;->userSetLocale:Z

    .line 1081
    invoke-interface {v5, v8}, Landroid/app/IActivityManager;->updateConfiguration(Landroid/content/res/Configuration;)V

    .line 1083
    const-string v29, "com.android.providers.settings"

    invoke-static/range {v29 .. v29}, Landroid/app/backup/BackupManager;->dataChanged(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1084
    .end local v5           #am:Landroid/app/IActivityManager;
    .end local v8           #config:Landroid/content/res/Configuration;
    :catch_0
    move-exception v29

    goto :goto_0

    .line 1092
    :sswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$2;->this$0:Lcom/android/internal/telephony/RIL;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/android/internal/telephony/RIL;->access$700(Lcom/android/internal/telephony/RIL;)Landroid/content/Context;

    move-result-object v29

    const-string v30, "call_restriction"

    const/16 v31, 0x0

    invoke-virtual/range {v29 .. v31}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v29

    invoke-interface/range {v29 .. v29}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v11

    .line 1094
    .local v11, editor:Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v29, "num0"

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_1

    .line 1095
    const/4 v9, 0x0

    .line 1103
    .local v9, data_input:I
    :goto_1
    const-string v29, "auto_answer_preference"

    move-object v0, v11

    move-object/from16 v1, v29

    move v2, v9

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1104
    invoke-interface {v11}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 1096
    .end local v9           #data_input:I
    :cond_1
    const-string/jumbo v29, "num1"

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_2

    .line 1097
    const/4 v9, 0x1

    .restart local v9       #data_input:I
    goto :goto_1

    .line 1098
    .end local v9           #data_input:I
    :cond_2
    const-string/jumbo v29, "num2"

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_3

    .line 1099
    const/4 v9, 0x2

    .restart local v9       #data_input:I
    goto :goto_1

    .line 1101
    .end local v9           #data_input:I
    :cond_3
    const/4 v9, 0x3

    .restart local v9       #data_input:I
    goto :goto_1

    .line 1110
    .end local v9           #data_input:I
    .end local v11           #editor:Landroid/content/SharedPreferences$Editor;
    :sswitch_2
    const-string/jumbo v29, "num0"

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_4

    .line 1111
    const/16 v9, 0x3a98

    .line 1124
    .restart local v9       #data_input:I
    :goto_2
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$2;->this$0:Lcom/android/internal/telephony/RIL;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/android/internal/telephony/RIL;->access$700(Lcom/android/internal/telephony/RIL;)Landroid/content/Context;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v29

    const-string/jumbo v30, "screen_off_timeout"

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    move v2, v9

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 1126
    :catch_1
    move-exception v29

    goto/16 :goto_0

    .line 1112
    .end local v9           #data_input:I
    :cond_4
    const-string/jumbo v29, "num1"

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_5

    .line 1113
    const/16 v9, 0x7530

    .restart local v9       #data_input:I
    goto :goto_2

    .line 1114
    .end local v9           #data_input:I
    :cond_5
    const-string/jumbo v29, "num2"

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_6

    .line 1115
    const v9, 0xea60

    .restart local v9       #data_input:I
    goto :goto_2

    .line 1116
    .end local v9           #data_input:I
    :cond_6
    const-string/jumbo v29, "num3"

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_7

    .line 1117
    const v9, 0x1d4c0

    .restart local v9       #data_input:I
    goto :goto_2

    .line 1118
    .end local v9           #data_input:I
    :cond_7
    const-string/jumbo v29, "num4"

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_8

    .line 1119
    const v9, 0x927c0

    .restart local v9       #data_input:I
    goto :goto_2

    .line 1121
    .end local v9           #data_input:I
    :cond_8
    const v9, 0x1b7740

    .restart local v9       #data_input:I
    goto :goto_2

    .line 1132
    .end local v9           #data_input:I
    :sswitch_3
    const-string v29, "Normal"

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_9

    .line 1134
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$2;->this$0:Lcom/android/internal/telephony/RIL;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/android/internal/telephony/RIL;->access$700(Lcom/android/internal/telephony/RIL;)Landroid/content/Context;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v29

    const-string v30, "dtmf_tone_type"

    const/16 v31, 0x0

    invoke-static/range {v29 .. v31}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 1139
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$2;->this$0:Lcom/android/internal/telephony/RIL;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/android/internal/telephony/RIL;->access$700(Lcom/android/internal/telephony/RIL;)Landroid/content/Context;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v29

    const-string v30, "dtmf_tone_type"

    const/16 v31, 0x1

    invoke-static/range {v29 .. v31}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 1147
    :sswitch_4
    const-string v29, "Disable"

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_a

    .line 1149
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$2;->this$0:Lcom/android/internal/telephony/RIL;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/android/internal/telephony/RIL;->access$700(Lcom/android/internal/telephony/RIL;)Landroid/content/Context;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v29

    const-string v30, "call_auto_retry"

    const/16 v31, 0x0

    invoke-static/range {v29 .. v31}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 1154
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$2;->this$0:Lcom/android/internal/telephony/RIL;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/android/internal/telephony/RIL;->access$700(Lcom/android/internal/telephony/RIL;)Landroid/content/Context;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v29

    const-string v30, "call_auto_retry"

    const/16 v31, 0x1

    invoke-static/range {v29 .. v31}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 1162
    :sswitch_5
    const-string v29, "Disable"

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_b

    .line 1164
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$2;->this$0:Lcom/android/internal/telephony/RIL;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/android/internal/telephony/RIL;->access$700(Lcom/android/internal/telephony/RIL;)Landroid/content/Context;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v29

    const-string v30, "carrier_wallpaper"

    const/16 v31, 0x0

    invoke-static/range {v29 .. v31}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1167
    :try_start_2
    new-instance v15, Ljava/io/File;

    const-string v29, "/system/media/video/carrier/wallpaper.bmp"

    move-object v0, v15

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1168
    .local v15, imageFile:Ljava/io/File;
    new-instance v15, Ljava/io/File;

    .end local v15           #imageFile:Ljava/io/File;
    const-string v29, "/data/local/tmp/wallpaper.bmp"

    move-object v0, v15

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1169
    .restart local v15       #imageFile:Ljava/io/File;
    invoke-virtual {v15}, Ljava/io/File;->exists()Z

    move-result v29

    if-eqz v29, :cond_0

    .line 1171
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$2;->this$0:Lcom/android/internal/telephony/RIL;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/android/internal/telephony/RIL;->access$700(Lcom/android/internal/telephony/RIL;)Landroid/content/Context;

    move-result-object v29

    const-string/jumbo v30, "wallpaper"

    invoke-virtual/range {v29 .. v30}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Landroid/app/WallpaperManager;

    .line 1172
    .local v28, wpm:Landroid/app/WallpaperManager;
    const v29, 0x7f020029

    invoke-virtual/range {v28 .. v29}, Landroid/app/WallpaperManager;->setResource(I)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_7

    goto/16 :goto_0

    .line 1178
    .end local v15           #imageFile:Ljava/io/File;
    .end local v28           #wpm:Landroid/app/WallpaperManager;
    :catch_2
    move-exception v29

    goto/16 :goto_0

    .line 1184
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$2;->this$0:Lcom/android/internal/telephony/RIL;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/android/internal/telephony/RIL;->access$700(Lcom/android/internal/telephony/RIL;)Landroid/content/Context;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v29

    const-string v30, "carrier_wallpaper"

    const/16 v31, 0x1

    invoke-static/range {v29 .. v31}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1189
    :try_start_3
    new-instance v15, Ljava/io/File;

    const-string v29, "/data/local/tmp/wallpaper.bmp"

    move-object v0, v15

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1190
    .restart local v15       #imageFile:Ljava/io/File;
    invoke-virtual {v15}, Ljava/io/File;->exists()Z

    move-result v29

    if-eqz v29, :cond_0

    .line 1192
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$2;->this$0:Lcom/android/internal/telephony/RIL;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/android/internal/telephony/RIL;->access$700(Lcom/android/internal/telephony/RIL;)Landroid/content/Context;

    move-result-object v29

    const-string/jumbo v30, "wallpaper"

    invoke-virtual/range {v29 .. v30}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Landroid/app/WallpaperManager;

    .line 1194
    .restart local v28       #wpm:Landroid/app/WallpaperManager;
    new-instance v22, Ljava/io/FileInputStream;

    const-string v29, "/data/local/tmp/wallpaper.bmp"

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 1195
    .local v22, stream:Ljava/io/InputStream;
    move-object/from16 v0, v28

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/app/WallpaperManager;->setStream(Ljava/io/InputStream;)V

    .line 1196
    if-eqz v22, :cond_0

    invoke-virtual/range {v22 .. v22}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_6

    goto/16 :goto_0

    .line 1202
    .end local v15           #imageFile:Ljava/io/File;
    .end local v22           #stream:Ljava/io/InputStream;
    .end local v28           #wpm:Landroid/app/WallpaperManager;
    :catch_3
    move-exception v29

    goto/16 :goto_0

    .line 1211
    :sswitch_6
    const-string v29, "Disable"

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_c

    .line 1213
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$2;->this$0:Lcom/android/internal/telephony/RIL;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/android/internal/telephony/RIL;->access$700(Lcom/android/internal/telephony/RIL;)Landroid/content/Context;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v29

    const-string v30, "carrier_power_onoff"

    const/16 v31, 0x0

    invoke-static/range {v29 .. v31}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 1218
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$2;->this$0:Lcom/android/internal/telephony/RIL;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/android/internal/telephony/RIL;->access$700(Lcom/android/internal/telephony/RIL;)Landroid/content/Context;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v29

    const-string v30, "carrier_power_onoff"

    const/16 v31, 0x1

    invoke-static/range {v29 .. v31}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 1229
    :sswitch_7
    const/16 v26, 0x0

    .line 1230
    .local v26, value:I
    const/16 v29, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v29

    const/16 v30, 0x30

    move/from16 v0, v29

    move/from16 v1, v30

    if-lt v0, v1, :cond_0

    const/16 v29, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v29

    const/16 v30, 0x39

    move/from16 v0, v29

    move/from16 v1, v30

    if-gt v0, v1, :cond_0

    .line 1233
    const/16 v29, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v29

    const/16 v30, 0x30

    sub-int v26, v29, v30

    .line 1235
    const/16 v29, 0x1

    move-object/from16 v0, p2

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v29

    const/16 v30, 0x30

    move/from16 v0, v29

    move/from16 v1, v30

    if-lt v0, v1, :cond_d

    const/16 v29, 0x1

    move-object/from16 v0, p2

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v29

    const/16 v30, 0x39

    move/from16 v0, v29

    move/from16 v1, v30

    if-gt v0, v1, :cond_d

    .line 1238
    mul-int/lit8 v29, v26, 0xa

    const/16 v30, 0x1

    move-object/from16 v0, p2

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v30

    add-int v29, v29, v30

    const/16 v30, 0x30

    sub-int v26, v29, v30

    .line 1241
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$2;->this$0:Lcom/android/internal/telephony/RIL;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/android/internal/telephony/RIL;->access$700(Lcom/android/internal/telephony/RIL;)Landroid/content/Context;

    move-result-object v29

    const-string v30, "audio"

    invoke-virtual/range {v29 .. v30}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/media/AudioManager;

    .line 1243
    .local v6, audioManager:Landroid/media/AudioManager;
    const/16 v29, 0x2

    const/16 v30, 0x0

    move-object v0, v6

    move/from16 v1, v29

    move/from16 v2, v26

    move/from16 v3, v30

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    goto/16 :goto_0

    .line 1251
    .end local v6           #audioManager:Landroid/media/AudioManager;
    .end local v26           #value:I
    :sswitch_8
    const/16 v26, 0x0

    .line 1252
    .restart local v26       #value:I
    const/16 v29, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v29

    const/16 v30, 0x30

    move/from16 v0, v29

    move/from16 v1, v30

    if-lt v0, v1, :cond_0

    const/16 v29, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v29

    const/16 v30, 0x39

    move/from16 v0, v29

    move/from16 v1, v30

    if-gt v0, v1, :cond_0

    .line 1255
    const/16 v29, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v29

    const/16 v30, 0x30

    sub-int v26, v29, v30

    .line 1257
    const/16 v29, 0x1

    move-object/from16 v0, p2

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v29

    const/16 v30, 0x30

    move/from16 v0, v29

    move/from16 v1, v30

    if-lt v0, v1, :cond_e

    const/16 v29, 0x1

    move-object/from16 v0, p2

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v29

    const/16 v30, 0x39

    move/from16 v0, v29

    move/from16 v1, v30

    if-gt v0, v1, :cond_e

    .line 1260
    mul-int/lit8 v29, v26, 0xa

    const/16 v30, 0x1

    move-object/from16 v0, p2

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v30

    add-int v29, v29, v30

    const/16 v30, 0x30

    sub-int v26, v29, v30

    .line 1262
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$2;->this$0:Lcom/android/internal/telephony/RIL;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/android/internal/telephony/RIL;->access$700(Lcom/android/internal/telephony/RIL;)Landroid/content/Context;

    move-result-object v29

    const-string v30, "audio"

    invoke-virtual/range {v29 .. v30}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/media/AudioManager;

    .line 1264
    .restart local v6       #audioManager:Landroid/media/AudioManager;
    const/16 v29, 0x3

    const/16 v30, 0x0

    move-object v0, v6

    move/from16 v1, v29

    move/from16 v2, v26

    move/from16 v3, v30

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    goto/16 :goto_0

    .line 1271
    .end local v6           #audioManager:Landroid/media/AudioManager;
    .end local v26           #value:I
    :sswitch_9
    const/16 v17, 0x0

    .line 1272
    .local v17, position:I
    new-instance v21, Landroid/media/RingtoneManager;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$2;->this$0:Lcom/android/internal/telephony/RIL;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/android/internal/telephony/RIL;->access$700(Lcom/android/internal/telephony/RIL;)Landroid/content/Context;

    move-result-object v29

    move-object/from16 v0, v21

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Landroid/media/RingtoneManager;-><init>(Landroid/content/Context;)V

    .line 1273
    .local v21, rm:Landroid/media/RingtoneManager;
    invoke-virtual/range {v21 .. v21}, Landroid/media/RingtoneManager;->getCursor()Landroid/database/Cursor;

    move-result-object v7

    .line 1274
    .local v7, c:Landroid/database/Cursor;
    const-string/jumbo v29, "title"

    move-object v0, v7

    move-object/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v24

    .line 1276
    .local v24, titleIndex:I
    :goto_3
    invoke-interface {v7}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v29

    if-nez v29, :cond_f

    .line 1277
    move-object v0, v7

    move/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    .line 1278
    .local v23, title:Ljava/lang/String;
    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_11

    .line 1284
    .end local v23           #title:Ljava/lang/String;
    :cond_f
    add-int/lit8 v17, v17, -0x1

    .line 1285
    const/16 v29, -0x1

    move/from16 v0, v17

    move/from16 v1, v29

    if-ne v0, v1, :cond_10

    .line 1286
    const/16 v17, 0x0

    .line 1288
    :cond_10
    move-object/from16 v0, v21

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/media/RingtoneManager;->getRingtoneUri(I)Landroid/net/Uri;

    move-result-object v25

    .line 1289
    .local v25, uri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$2;->this$0:Lcom/android/internal/telephony/RIL;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/android/internal/telephony/RIL;->access$700(Lcom/android/internal/telephony/RIL;)Landroid/content/Context;

    move-result-object v29

    const/16 v30, 0x1

    move-object/from16 v0, v29

    move/from16 v1, v30

    move-object/from16 v2, v25

    invoke-static {v0, v1, v2}, Landroid/media/RingtoneManager;->setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V

    goto/16 :goto_0

    .line 1281
    .end local v25           #uri:Landroid/net/Uri;
    .restart local v23       #title:Ljava/lang/String;
    :cond_11
    add-int/lit8 v17, v17, 0x1

    .line 1282
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_3

    .line 1296
    .end local v7           #c:Landroid/database/Cursor;
    .end local v17           #position:I
    .end local v21           #rm:Landroid/media/RingtoneManager;
    .end local v23           #title:Ljava/lang/String;
    .end local v24           #titleIndex:I
    :sswitch_a
    const-string v29, "mmsc"

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1297
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$2;->this$0:Lcom/android/internal/telephony/RIL;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/android/internal/telephony/RIL;->access$700(Lcom/android/internal/telephony/RIL;)Landroid/content/Context;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v29

    sget-object v30, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    const/16 v31, 0x0

    const/16 v32, 0x0

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    move-object/from16 v2, v27

    move-object/from16 v3, v31

    move-object/from16 v4, v32

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1305
    :sswitch_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$2;->this$0:Lcom/android/internal/telephony/RIL;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/android/internal/telephony/RIL;->access$700(Lcom/android/internal/telephony/RIL;)Landroid/content/Context;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v29

    const-string v30, "mms_user_agent"

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 1316
    :sswitch_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$2;->this$0:Lcom/android/internal/telephony/RIL;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/android/internal/telephony/RIL;->access$700(Lcom/android/internal/telephony/RIL;)Landroid/content/Context;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v29

    const-string v30, "mms_x_wap_profile_url"

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 1325
    :sswitch_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$2;->this$0:Lcom/android/internal/telephony/RIL;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/android/internal/telephony/RIL;->access$700(Lcom/android/internal/telephony/RIL;)Landroid/content/Context;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v29

    const-string v30, "mms_post_url"

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 1335
    :sswitch_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$2;->this$0:Lcom/android/internal/telephony/RIL;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/android/internal/telephony/RIL;->access$700(Lcom/android/internal/telephony/RIL;)Landroid/content/Context;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v29

    const-string v30, "mms_subscriber_id"

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 1346
    :sswitch_f
    const-string v29, "Disable"

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_12

    .line 1348
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v29

    const/16 v30, 0x0

    invoke-interface/range {v29 .. v30}, Lcom/android/internal/telephony/Phone;->setDataDunEnabled(Z)V

    goto/16 :goto_0

    .line 1353
    :cond_12
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v29

    const/16 v30, 0x1

    invoke-interface/range {v29 .. v30}, Lcom/android/internal/telephony/Phone;->setDataDunEnabled(Z)V

    goto/16 :goto_0

    .line 1362
    :sswitch_10
    invoke-static {}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getCDMAPhoneContext()Landroid/content/Context;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v19

    .line 1363
    .local v19, pref_oper_numeric:Landroid/content/SharedPreferences;
    invoke-interface/range {v19 .. v19}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v13

    .line 1365
    .local v13, editor_oper_numeric:Landroid/content/SharedPreferences$Editor;
    const-string v29, "Oper_Numeric"

    move-object v0, v13

    move-object/from16 v1, v29

    move-object/from16 v2, p2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1366
    invoke-interface {v13}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_0

    .line 1373
    .end local v13           #editor_oper_numeric:Landroid/content/SharedPreferences$Editor;
    .end local v19           #pref_oper_numeric:Landroid/content/SharedPreferences;
    :sswitch_11
    invoke-static {}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getCDMAPhoneContext()Landroid/content/Context;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v18

    .line 1374
    .local v18, pref_oper_alpha:Landroid/content/SharedPreferences;
    invoke-interface/range {v18 .. v18}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v12

    .line 1375
    .local v12, editor_oper_alpha:Landroid/content/SharedPreferences$Editor;
    const-string v29, "Oper_Alpha"

    move-object v0, v12

    move-object/from16 v1, v29

    move-object/from16 v2, p2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1376
    invoke-interface {v12}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_0

    .line 1389
    .end local v12           #editor_oper_alpha:Landroid/content/SharedPreferences$Editor;
    .end local v18           #pref_oper_alpha:Landroid/content/SharedPreferences;
    :sswitch_12
    :try_start_4
    const-string v29, "free_images"

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_13

    .line 1392
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v29

    const-string/jumbo v30, "pstset CARRIER S"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v16

    .local v16, p:Ljava/lang/Process;
    goto/16 :goto_0

    .line 1394
    .end local v16           #p:Ljava/lang/Process;
    :cond_13
    const-string v29, "lock_images"

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_14

    .line 1397
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v29

    const-string/jumbo v30, "pstset CARRIER E"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v16

    .restart local v16       #p:Ljava/lang/Process;
    goto/16 :goto_0

    .line 1399
    .end local v16           #p:Ljava/lang/Process;
    :cond_14
    const-string v29, "free_dbs"

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_15

    .line 1402
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v29

    const-string/jumbo v30, "pstset TRANS S"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v16

    .restart local v16       #p:Ljava/lang/Process;
    goto/16 :goto_0

    .line 1404
    .end local v16           #p:Ljava/lang/Process;
    :cond_15
    const-string v29, "lock_dbs"

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_0

    .line 1407
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v29

    const-string/jumbo v30, "pstset TRANS E"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    goto/16 :goto_0

    .line 1410
    :catch_4
    move-exception v29

    move-object/from16 v10, v29

    .line 1411
    .local v10, e:Ljava/io/IOException;
    const-string v29, "RILJ"

    const-string v30, "IOException in excuting pstset !!!"

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1420
    .end local v10           #e:Ljava/io/IOException;
    :sswitch_13
    :try_start_5
    const-string v29, "Home only"

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_16

    .line 1423
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$2;->this$0:Lcom/android/internal/telephony/RIL;

    move-object/from16 v29, v0

    const/16 v30, 0x2

    const/16 v31, 0x0

    invoke-virtual/range {v29 .. v31}, Lcom/android/internal/telephony/RIL;->setCdmaRoamingPreference(ILandroid/os/Message;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    goto/16 :goto_0

    .line 1428
    :catch_5
    move-exception v29

    move-object/from16 v10, v29

    .line 1429
    .local v10, e:Ljava/lang/Exception;
    const-string v29, "RILJ"

    const-string v30, "IOException in excuting pstset - 118 !!!"

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1426
    .end local v10           #e:Ljava/lang/Exception;
    :cond_16
    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$2;->this$0:Lcom/android/internal/telephony/RIL;

    move-object/from16 v29, v0

    const/16 v30, 0x3

    const/16 v31, 0x0

    invoke-virtual/range {v29 .. v31}, Lcom/android/internal/telephony/RIL;->setCdmaRoamingPreference(ILandroid/os/Message;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    goto/16 :goto_0

    .line 1436
    :sswitch_14
    invoke-static {}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getCDMAPhoneContext()Landroid/content/Context;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v20

    .line 1437
    .local v20, pref_voicemail_num:Landroid/content/SharedPreferences;
    invoke-interface/range {v20 .. v20}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v14

    .line 1439
    .local v14, editor_voicemail_num:Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v29, "vm_number_key_cdma"

    move-object v0, v14

    move-object/from16 v1, v29

    move-object/from16 v2, p2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1440
    invoke-interface {v14}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_0

    .line 1203
    .end local v14           #editor_voicemail_num:Landroid/content/SharedPreferences$Editor;
    .end local v20           #pref_voicemail_num:Landroid/content/SharedPreferences;
    :catch_6
    move-exception v29

    goto/16 :goto_0

    .line 1179
    :catch_7
    move-exception v29

    goto/16 :goto_0

    .line 1071
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_3
        0x5 -> :sswitch_4
        0x11 -> :sswitch_5
        0x12 -> :sswitch_6
        0x33 -> :sswitch_7
        0x34 -> :sswitch_8
        0x35 -> :sswitch_9
        0x65 -> :sswitch_a
        0x66 -> :sswitch_b
        0x67 -> :sswitch_c
        0x68 -> :sswitch_d
        0x69 -> :sswitch_e
        0x73 -> :sswitch_14
        0x76 -> :sswitch_13
        0x7e -> :sswitch_f
        0x7f -> :sswitch_10
        0x80 -> :sswitch_11
        0xff -> :sswitch_12
    .end sparse-switch
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    const/4 v2, 0x0

    .line 1479
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 1494
    iget-object v0, p0, Lcom/android/internal/telephony/RIL$2;->this$0:Lcom/android/internal/telephony/RIL;

    invoke-static {v0}, Lcom/android/internal/telephony/RIL;->access$700(Lcom/android/internal/telephony/RIL;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "default"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1497
    :goto_0
    return-void

    .line 1482
    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/telephony/RIL$2;->this$0:Lcom/android/internal/telephony/RIL;

    invoke-static {v0}, Lcom/android/internal/telephony/RIL;->access$700(Lcom/android/internal/telephony/RIL;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "EVENT_PST_DEL_ALL_CONTACTS"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1485
    :pswitch_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL$2;->getItemData(I)V

    goto :goto_0

    .line 1488
    :pswitch_2
    iget v0, p1, Landroid/os/Message;->arg2:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 1489
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/RIL$2;->setItemData(II)V

    goto :goto_0

    .line 1491
    :cond_0
    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/RIL$2;->setItemData(ILjava/lang/String;)V

    goto :goto_0

    .line 1479
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
