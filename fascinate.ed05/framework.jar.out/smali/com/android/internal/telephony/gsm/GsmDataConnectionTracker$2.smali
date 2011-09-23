.class Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$2;
.super Ljava/lang/Object;
.source "GsmDataConnectionTracker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)V
    .locals 0
    .parameter

    .prologue
    .line 958
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 21

    .prologue
    .line 960
    const-wide/16 v10, -0x1

    .local v10, preTxPkts:J
    const-wide/16 v8, -0x1

    .line 962
    .local v8, preRxPkts:J
    sget-object v5, Lcom/android/internal/telephony/DataConnectionTracker$Activity;->NONE:Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    .line 964
    .local v5, newActivity:Lcom/android/internal/telephony/DataConnectionTracker$Activity;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$1000(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)J

    move-result-wide v10

    .line 965
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$1100(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)J

    move-result-wide v8

    .line 967
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    move-object/from16 v17, v0

    invoke-static {}, Landroid/net/TrafficStats;->getMobileTxPackets()J

    move-result-wide v18

    invoke-static/range {v17 .. v19}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$1202(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;J)J

    .line 968
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    move-object/from16 v17, v0

    invoke-static {}, Landroid/net/TrafficStats;->getMobileRxPackets()J

    move-result-wide v18

    invoke-static/range {v17 .. v19}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$1302(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;J)J

    .line 970
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    .line 977
    .local v4, curCalendar:Ljava/util/Calendar;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$1400(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)Z

    move-result v17

    if-eqz v17, :cond_1

    const-wide/16 v17, 0x0

    cmp-long v17, v10, v17

    if-gtz v17, :cond_0

    const-wide/16 v17, 0x0

    cmp-long v17, v8, v17

    if-lez v17, :cond_1

    .line 978
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$1500(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)J

    move-result-wide v17

    sub-long v14, v17, v10

    .line 979
    .local v14, sent:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$1600(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)J

    move-result-wide v17

    sub-long v12, v17, v8

    .line 981
    .local v12, received:J
    const-wide/16 v17, 0x0

    cmp-long v17, v14, v17

    if-lez v17, :cond_4

    const-wide/16 v17, 0x0

    cmp-long v17, v12, v17

    if-lez v17, :cond_4

    .line 982
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    move-object/from16 v17, v0

    const-wide/16 v18, 0x0

    invoke-static/range {v17 .. v19}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$1702(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;J)J

    .line 983
    sget-object v5, Lcom/android/internal/telephony/DataConnectionTracker$Activity;->DATAINANDOUT:Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    .line 984
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-static/range {v17 .. v18}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$1802(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;I)I

    .line 1003
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$2400(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    move-result-object v17

    move-object/from16 v0, v17

    move-object v1, v5

    if-eq v0, v1, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$100(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)Z

    move-result v17

    if-eqz v17, :cond_1

    .line 1004
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object v1, v5

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$2502(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;Lcom/android/internal/telephony/DataConnectionTracker$Activity;)Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    .line 1005
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$2600(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/telephony/PhoneBase;->notifyDataActivity()V

    .line 1028
    .end local v12           #received:J
    .end local v14           #sent:J
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$2700(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)Landroid/content/ContentResolver;

    move-result-object v17

    const-string v18, "pdp_watchdog_trigger_packet_count"

    const/16 v19, 0xa

    invoke-static/range {v17 .. v19}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v16

    .line 1032
    .local v16, watchdogTrigger:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$2800(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)J

    move-result-wide v17

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v19, v0

    cmp-long v17, v17, v19

    if-ltz v17, :cond_a

    .line 1034
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$2900(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)I

    move-result v17

    if-nez v17, :cond_2

    .line 1035
    const v17, 0xc3b5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$3000(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)J

    move-result-wide v18

    invoke-static/range {v17 .. v19}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 1039
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$2700(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)Landroid/content/ContentResolver;

    move-result-object v17

    const-string v18, "pdp_watchdog_error_poll_count"

    const/16 v19, 0x18

    invoke-static/range {v17 .. v19}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    .line 1042
    .local v6, noRecvPollLimit:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$3100(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)I

    move-result v17

    move/from16 v0, v17

    move v1, v6

    if-ge v0, v1, :cond_9

    .line 1045
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    move-object/from16 v17, v0

    const-string v18, "no DATAIN in a while; polling PDP"

    invoke-virtual/range {v17 .. v18}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1046
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$3200(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v17

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    move-object/from16 v18, v0

    const/16 v19, 0xb

    invoke-virtual/range {v18 .. v19}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v18

    invoke-interface/range {v17 .. v18}, Lcom/android/internal/telephony/CommandsInterface;->getDataCallList(Landroid/os/Message;)V

    .line 1048
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$3308(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)I

    .line 1051
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$2700(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)Landroid/content/ContentResolver;

    move-result-object v18

    const-string v19, "pdp_watchdog_error_poll_interval_ms"

    const/16 v20, 0x1388

    invoke-static/range {v18 .. v20}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v18

    invoke-static/range {v17 .. v18}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$3402(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;I)I

    .line 1085
    .end local v6           #noRecvPollLimit:I
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$4100(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)Z

    move-result v17

    if-eqz v17, :cond_3

    .line 1086
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$4300(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)Landroid/os/Handler;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$4200(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)I

    move-result v18

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-wide/from16 v2, v18

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1093
    :cond_3
    return-void

    .line 985
    .end local v16           #watchdogTrigger:I
    .restart local v12       #received:J
    .restart local v14       #sent:J
    :cond_4
    const-wide/16 v17, 0x0

    cmp-long v17, v14, v17

    if-lez v17, :cond_6

    const-wide/16 v17, 0x0

    cmp-long v17, v12, v17

    if-nez v17, :cond_6

    .line 986
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$1900(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/telephony/PhoneBase;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v17

    sget-object v18, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_5

    .line 987
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-wide v1, v14

    invoke-static {v0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$2014(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;J)J

    .line 991
    :goto_2
    sget-object v5, Lcom/android/internal/telephony/DataConnectionTracker$Activity;->DATAOUT:Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    goto/16 :goto_0

    .line 989
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    move-object/from16 v17, v0

    const-wide/16 v18, 0x0

    invoke-static/range {v17 .. v19}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$2102(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;J)J

    goto :goto_2

    .line 992
    :cond_6
    const-wide/16 v17, 0x0

    cmp-long v17, v14, v17

    if-nez v17, :cond_7

    const-wide/16 v17, 0x0

    cmp-long v17, v12, v17

    if-lez v17, :cond_7

    .line 993
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    move-object/from16 v17, v0

    const-wide/16 v18, 0x0

    invoke-static/range {v17 .. v19}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$2202(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;J)J

    .line 994
    sget-object v5, Lcom/android/internal/telephony/DataConnectionTracker$Activity;->DATAIN:Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    .line 995
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-static/range {v17 .. v18}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$1802(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;I)I

    goto/16 :goto_0

    .line 996
    :cond_7
    const-wide/16 v17, 0x0

    cmp-long v17, v14, v17

    if-nez v17, :cond_8

    const-wide/16 v17, 0x0

    cmp-long v17, v12, v17

    if-nez v17, :cond_8

    .line 997
    sget-object v5, Lcom/android/internal/telephony/DataConnectionTracker$Activity;->NONE:Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    goto/16 :goto_0

    .line 999
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    move-object/from16 v17, v0

    const-wide/16 v18, 0x0

    invoke-static/range {v17 .. v19}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$2302(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;J)J

    .line 1000
    sget-object v5, Lcom/android/internal/telephony/DataConnectionTracker$Activity;->NONE:Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    goto/16 :goto_0

    .line 1055
    .end local v12           #received:J
    .end local v14           #sent:J
    .restart local v6       #noRecvPollLimit:I
    .restart local v16       #watchdogTrigger:I
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    move-object/from16 v17, v0

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Sent "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$3500(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)J

    move-result-wide v19

    invoke-static/range {v19 .. v20}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " pkts since last received"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1059
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->stopNetStatPoll()V

    .line 1060
    new-instance v7, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$2$1;

    move-object v0, v7

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$2$1;-><init>(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$2;)V

    .line 1065
    .local v7, pingTest:Ljava/lang/Thread;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-static/range {v17 .. v18}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$3702(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;Z)Z

    .line 1066
    invoke-virtual {v7}, Ljava/lang/Thread;->start()V

    goto/16 :goto_1

    .line 1069
    .end local v6           #noRecvPollLimit:I
    .end local v7           #pingTest:Ljava/lang/Thread;
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-static/range {v17 .. v18}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$3802(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;I)I

    .line 1070
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$100(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)Z

    move-result v17

    if-eqz v17, :cond_b

    .line 1071
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$2700(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)Landroid/content/ContentResolver;

    move-result-object v18

    const-string v19, "pdp_watchdog_poll_interval_ms"

    const/16 v20, 0x3e8

    invoke-static/range {v18 .. v20}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v18

    invoke-static/range {v17 .. v18}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$3902(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;I)I

    goto/16 :goto_1

    .line 1078
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$2700(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)Landroid/content/ContentResolver;

    move-result-object v18

    const-string v19, "pdp_watchdog_long_poll_interval_ms"

    const v20, 0x927c0

    invoke-static/range {v18 .. v20}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v18

    invoke-static/range {v17 .. v18}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$4002(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;I)I

    goto/16 :goto_1
.end method
