.class public Lgbsdk/common/host/abnn;
.super Ljava/lang/Object;
.source "SettingUtil.java"


# static fields
.field public static a:Ljava/lang/String; = "ret"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static b(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 2

    if-eqz p0, :cond_1

    .line 26
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "error_no"

    .line 27
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "data"

    .line 29
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 30
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x0

    .line 31
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 32
    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 34
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static c(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 36

    move-object/from16 v0, p0

    const-string v1, "slardar_api_settings"

    .line 58
    sget-object v2, Lgbsdk/common/host/abnm;->a:Ljava/lang/String;

    .line 59
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 60
    sget-object v2, Lgbsdk/common/host/abnn;->a:Ljava/lang/String;

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v4, "performance_modules"

    .line 61
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "general"

    .line 62
    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "custom_event_settings"

    .line 63
    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "network_image_modules"

    .line 64
    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v7, "smooth"

    .line 66
    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    const-string v8, "start_trace"

    .line 67
    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    const-string v9, "page_load_trace"

    .line 68
    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    const-string v10, "memory"

    .line 69
    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    const-string v11, "battery"

    .line 70
    invoke-virtual {v4, v11}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 97
    new-instance v11, Lorg/json/JSONObject;

    invoke-direct {v11}, Lorg/json/JSONObject;-><init>()V

    const-string v12, "uploading_interval"

    const-string v13, "update_as_first_launch"

    const/16 v16, 0x9c4

    const/16 v17, 0xfa0

    const/16 v18, 0xe10

    const/16 v19, 0x3c

    const/16 v20, 0x64

    const/16 v21, 0x5

    const-string v22, ""

    if-eqz v0, :cond_b

    const-string v14, "lag_module"

    .line 101
    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v14

    const-string v15, "experience_module"

    .line 102
    invoke-virtual {v0, v15}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v15

    move-object/from16 v23, v11

    const-string v11, "memory_module"

    .line 103
    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v11

    move-object/from16 v24, v3

    const-string v3, "over_all"

    .line 104
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    move-object/from16 v25, v6

    const-string v6, "page_analysis_module"

    .line 105
    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    move-object/from16 v26, v1

    const-string v1, "net_module"

    .line 106
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    move-object/from16 v27, v5

    const-string v5, "event_module"

    .line 107
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    move-object/from16 v28, v2

    const-string v2, "battery_module"

    .line 108
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    move-object/from16 v29, v9

    const-string v9, "status"

    move-object/from16 v30, v10

    const/4 v10, 0x0

    .line 110
    invoke-virtual {v0, v9, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    .line 112
    :try_start_0
    invoke-static/range {p1 .. p1}, Lcom/bytedance/framwork/core/apm/SDKMonitorUtils;->getInstance(Ljava/lang/String;)Lcom/bytedance/framwork/core/apm/SDKMonitor;

    move-result-object v9

    invoke-virtual {v9}, Lcom/bytedance/framwork/core/apm/SDKMonitor;->getSp()Landroid/content/SharedPreferences;

    move-result-object v9

    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    const-string v10, "monitor_status"

    invoke-interface {v9, v10, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    nop

    :goto_0
    const-string v9, "switcher"

    if-eqz v14, :cond_0

    .line 116
    invoke-virtual {v14, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v10

    move/from16 p0, v10

    const-string v10, "lag_threshold"

    .line 117
    invoke-virtual {v14, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v10

    mul-int/lit16 v10, v10, 0x3e8

    move/from16 v16, v10

    const-string v10, "lag_serious_threshold"

    .line 118
    invoke-virtual {v14, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v10

    mul-int/lit16 v10, v10, 0x3e8

    move/from16 v17, v10

    move/from16 v10, p0

    goto :goto_1

    :cond_0
    const/4 v10, 0x0

    :goto_1
    if-eqz v15, :cond_3

    .line 121
    invoke-virtual {v15, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v14

    move/from16 p0, v10

    const-string v10, "page_module"

    .line 122
    invoke-virtual {v15, v10}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    move/from16 p1, v14

    if-eqz v10, :cond_1

    const-string v14, "page_sampling_rate"

    .line 124
    invoke-virtual {v10, v14}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v10

    goto :goto_2

    :cond_1
    const/4 v10, 0x0

    :goto_2
    const-string v14, "startup_module"

    .line 126
    invoke-virtual {v15, v14}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v14

    if-eqz v14, :cond_2

    .line 128
    invoke-virtual {v14, v13}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v14

    move v15, v14

    move/from16 v14, p1

    goto :goto_4

    :cond_2
    move/from16 v14, p1

    goto :goto_3

    :cond_3
    move/from16 p0, v10

    const/4 v10, 0x0

    const/4 v14, 0x0

    :goto_3
    const/4 v15, 0x1

    :goto_4
    if-eqz v11, :cond_4

    .line 132
    invoke-virtual {v11, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v20

    move/from16 p1, v10

    const-string v10, "memory_rate"

    .line 133
    invoke-virtual {v11, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v10

    goto :goto_5

    :cond_4
    move/from16 p1, v10

    const/16 v10, 0x64

    const/16 v20, 0x0

    :goto_5
    if-eqz v3, :cond_5

    const-string v11, "get_settings_interval"

    .line 137
    invoke-virtual {v3, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v18

    .line 138
    invoke-virtual {v3, v12}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v19

    :cond_5
    if-eqz v6, :cond_6

    .line 141
    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    goto :goto_6

    :cond_6
    const/4 v3, 0x0

    :goto_6
    if-eqz v1, :cond_7

    .line 144
    invoke-virtual {v1, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    const-string v11, "net_sampling_rate"

    .line 145
    invoke-virtual {v1, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v11

    move/from16 v31, v3

    const-string v3, "no_net_server_collect_flag"

    .line 146
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    move/from16 v22, v3

    const-string v3, "req_collect_filter"

    .line 147
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move/from16 v3, v22

    move-object/from16 v22, v1

    goto :goto_7

    :cond_7
    move/from16 v31, v3

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v11, 0x0

    :goto_7
    if-eqz v5, :cond_9

    .line 150
    invoke-virtual {v5, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    move/from16 v23, v1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_8

    const/4 v1, 0x0

    goto :goto_8

    :cond_8
    move/from16 v1, v23

    :goto_8
    const-string v0, "allow_event"

    .line 156
    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    goto :goto_9

    :cond_9
    move-object/from16 v0, v23

    const/4 v1, 0x0

    :goto_9
    if-eqz v2, :cond_a

    .line 160
    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    const-string v9, "battery_background_enable"

    .line 161
    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v9

    move-object/from16 v23, v0

    const-string v0, "battery_enable_upload"

    .line 162
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    move/from16 v21, v0

    const-string v0, "battery_sample_interval"

    .line 163
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    move/from16 v32, v0

    const-string v0, "exception_enable_upload"

    move/from16 v33, v1

    .line 165
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v4, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 166
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "trace_enable"

    invoke-virtual {v4, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "max_single_wake_lock_hold_time_second"

    .line 167
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v4, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "max_total_wake_lock_acquire_count"

    .line 168
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v4, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "max_total_wake_lock_hold_time_second"

    .line 169
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v4, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "max_single_loc_request_time_second"

    .line 170
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v4, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "max_total_loc_request_count"

    .line 171
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v4, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "max_total_loc_request_time_second"

    .line 172
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v4, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "max_wake_up_alarm_invoke_count"

    .line 173
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v4, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "max_normal_alarm_invoke_count"

    .line 174
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v4, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move v2, v14

    move/from16 v1, v17

    move/from16 v34, v19

    move/from16 v0, v21

    move-object/from16 v35, v22

    move-object/from16 v17, v23

    move/from16 v14, v32

    move/from16 v21, v3

    move/from16 v23, v6

    move v3, v10

    move/from16 v22, v11

    move-object/from16 v19, v12

    move v6, v15

    move/from16 v15, v16

    move/from16 v12, v20

    move/from16 v16, v31

    move/from16 v10, p0

    move/from16 v11, p1

    move/from16 v31, v9

    goto :goto_a

    :cond_a
    move-object/from16 v23, v0

    move/from16 v33, v1

    move/from16 v21, v3

    move v3, v10

    move v2, v14

    move/from16 v1, v17

    move/from16 v34, v19

    move-object/from16 v35, v22

    move-object/from16 v17, v23

    const/4 v0, 0x0

    const/4 v5, 0x0

    const/4 v14, 0x5

    move/from16 v10, p0

    move/from16 v23, v6

    move/from16 v22, v11

    move-object/from16 v19, v12

    move v6, v15

    move/from16 v15, v16

    move/from16 v12, v20

    move/from16 v16, v31

    const/16 v31, 0x0

    move/from16 v11, p1

    :goto_a
    move/from16 v20, v18

    move/from16 v18, v33

    goto :goto_b

    :cond_b
    move-object/from16 v26, v1

    move-object/from16 v28, v2

    move-object/from16 v24, v3

    move-object/from16 v27, v5

    move-object/from16 v25, v6

    move-object/from16 v29, v9

    move-object/from16 v30, v10

    move-object/from16 v23, v11

    move-object/from16 v19, v12

    move-object/from16 v35, v22

    move-object/from16 v17, v23

    const/4 v0, 0x0

    const/16 v1, 0xfa0

    const/4 v2, 0x0

    const/16 v3, 0x64

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x5

    const/16 v15, 0x9c4

    const/16 v16, 0x0

    const/16 v18, 0x0

    const/16 v20, 0xe10

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v31, 0x0

    const/16 v34, 0x3c

    :goto_b
    const-string v9, "block_enable_upload"

    .line 178
    invoke-virtual {v7, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v9, "serious_block_enable_upload"

    .line 179
    invoke-virtual {v7, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v9, "enable_upload"

    .line 180
    invoke-virtual {v8, v9, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-object/from16 v10, v30

    .line 181
    invoke-virtual {v10, v9, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move/from16 v30, v14

    const-string v14, "enable_widget_memory"

    .line 182
    invoke-virtual {v10, v14, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v12, "rate_memory_occupied"

    .line 183
    invoke-virtual {v10, v12, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v3, "block_threshold"

    .line 185
    invoke-virtual {v7, v3, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v3, "serious_block_threshold"

    .line 186
    invoke-virtual {v7, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const/4 v1, 0x1

    if-ne v11, v1, :cond_c

    if-ne v2, v1, :cond_c

    move-object/from16 v10, v29

    const/4 v3, 0x1

    goto :goto_c

    :cond_c
    move-object/from16 v10, v29

    const/4 v3, 0x0

    .line 187
    :goto_c
    invoke-virtual {v10, v9, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    if-ne v11, v1, :cond_d

    if-ne v2, v1, :cond_d

    const/4 v3, 0x1

    goto :goto_d

    :cond_d
    const/4 v3, 0x0

    .line 188
    :goto_d
    invoke-virtual {v7, v9, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    if-ne v11, v1, :cond_e

    if-ne v2, v1, :cond_e

    const/4 v2, 0x1

    goto :goto_e

    :cond_e
    const/4 v2, 0x0

    :goto_e
    const-string v3, "drop_enable_upload"

    .line 189
    invoke-virtual {v7, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 190
    invoke-virtual {v8, v13, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    if-ne v5, v1, :cond_f

    if-ne v0, v1, :cond_f

    const/4 v15, 0x1

    goto :goto_f

    :cond_f
    const/4 v15, 0x0

    .line 193
    :goto_f
    invoke-virtual {v4, v9, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "sample_interval"

    move/from16 v1, v30

    .line 194
    invoke-virtual {v4, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "background_enable"

    move/from16 v9, v31

    .line 195
    invoke-virtual {v4, v0, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :try_start_1
    const-string v0, "network"

    move-object/from16 v1, v28

    .line 217
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "enable_net_monitor"

    move/from16 v6, v23

    .line 218
    invoke-virtual {v0, v1, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "enable_success_net_sample"

    move/from16 v11, v22

    .line 219
    invoke-virtual {v0, v1, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "enable_net_monitor_with_net_disable"

    move/from16 v3, v21

    .line 220
    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "filter_info"

    move-object/from16 v2, v35

    .line 221
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-object/from16 v1, v26

    move-object/from16 v0, v27

    .line 229
    :try_start_2
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "fetch_setting"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "fetch_setting_interval"

    move/from16 v4, v20

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 236
    :catch_1
    :try_start_3
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "report_setting"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const/16 v1, 0xa

    move/from16 v2, v34

    if-le v2, v1, :cond_10

    const-string v1, "apm6_uploading_interval"

    .line 239
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "uploading_interval_background"

    .line 240
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-object/from16 v1, v19

    .line 241
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :catch_2
    :cond_10
    move/from16 v0, v18

    const/4 v1, 0x1

    if-ne v0, v1, :cond_11

    :try_start_4
    const-string v0, "allow_service_name"
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    move-object/from16 v2, v17

    move-object/from16 v1, v25

    .line 250
    :try_start_5
    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_10

    :catch_3
    :cond_11
    move-object/from16 v1, v25

    :catch_4
    :goto_10
    :try_start_6
    const-string v0, "allow_log_type"

    .line 257
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "hybrid"

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    :catch_5
    return-object v24
.end method
