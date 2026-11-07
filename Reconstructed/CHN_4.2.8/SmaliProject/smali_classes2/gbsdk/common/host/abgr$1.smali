.class public final Lgbsdk/common/host/abgr$1;
.super Ljava/lang/Object;
.source "AlogActiveUploadManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgbsdk/common/host/abgr;->a(JJLgbsdk/common/host/abgn;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:J

.field final synthetic d:Ljava/lang/String;

.field final synthetic fO:Lgbsdk/common/host/abgn;


# direct methods
.method constructor <init>(JJLgbsdk/common/host/abgn;Ljava/lang/String;)V
    .locals 0

    .line 45
    iput-wide p1, p0, Lgbsdk/common/host/abgr$1;->a:J

    iput-wide p3, p0, Lgbsdk/common/host/abgr$1;->b:J

    iput-object p5, p0, Lgbsdk/common/host/abgr$1;->fO:Lgbsdk/common/host/abgn;

    iput-object p6, p0, Lgbsdk/common/host/abgr$1;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 14

    .line 48
    iget-wide v0, p0, Lgbsdk/common/host/abgr$1;->a:J

    iget-wide v2, p0, Lgbsdk/common/host/abgr$1;->b:J

    iget-object v4, p0, Lgbsdk/common/host/abgr$1;->fO:Lgbsdk/common/host/abgn;

    iget-object v5, p0, Lgbsdk/common/host/abgr$1;->d:Ljava/lang/String;

    .line 1054
    invoke-static {}, Lcom/apm/insight/log/VLog;->flush()V

    const-wide/16 v6, 0x1f4

    .line 1056
    :try_start_0
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v6

    .line 1058
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    const/4 v6, 0x0

    const/4 v7, 0x0

    cmp-long v8, v0, v2

    if-lez v8, :cond_1

    if-eqz v4, :cond_0

    const/16 v0, 0xa

    .line 1062
    invoke-static {v7, v0, v6, v6}, Lgbsdk/common/host/abgo;->b(ZILjava/lang/Exception;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    :cond_0
    return-void

    .line 1068
    :cond_1
    invoke-static {v5}, Lcom/apm/insight/log/VLog;->getInstance(Ljava/lang/String;)Lcom/apm/insight/log/ILog;

    move-result-object v8

    const/4 v9, 0x1

    if-eqz v8, :cond_2

    const-wide/16 v10, 0x3e8

    .line 1070
    div-long v12, v0, v10

    div-long v10, v2, v10

    invoke-interface {v8, v12, v13, v10, v11}, Lcom/apm/insight/log/ILog;->getFilesOfAllProcesses(JJ)Ljava/util/List;

    move-result-object v8

    .line 1071
    sget-boolean v10, Lgbsdk/common/host/abvp;->a:Z

    if-eqz v10, :cond_3

    new-array v10, v9, [Ljava/lang/String;

    .line 1072
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "iLog get vlog list size:"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v7

    const-string v11, "ApmInsight"

    invoke-static {v11, v10}, Lgbsdk/common/host/abvp;->c(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    move-object v8, v6

    :cond_3
    :goto_1
    if-eqz v8, :cond_5

    .line 1170
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v10

    if-nez v10, :cond_4

    goto :goto_2

    :cond_4
    const/4 v10, 0x0

    goto :goto_3

    :cond_5
    :goto_2
    const/4 v10, 0x1

    :goto_3
    const-string v11, "info"

    if-nez v10, :cond_f

    .line 1262
    new-instance v0, Lgbsdk/common/host/abgu;

    invoke-direct {v0}, Lgbsdk/common/host/abgu;-><init>()V

    .line 2042
    iput-object v5, v0, Lgbsdk/common/host/abgu;->b:Ljava/lang/String;

    .line 1264
    invoke-static {v5}, Lgbsdk/common/host/abut;->cK(Ljava/lang/String;)Lgbsdk/common/host/abut;

    move-result-object v1

    .line 2072
    iget-object v1, v1, Lgbsdk/common/host/abut;->aKP:Lcom/monitor/cloudmessage/config/SDKCloudInitConfig;

    .line 1264
    invoke-virtual {v1}, Lcom/monitor/cloudmessage/config/SDKCloudInitConfig;->getDynamicParams()Lcom/monitor/cloudmessage/config/SDKIDynamicParams;

    move-result-object v1

    invoke-virtual {v1}, Lcom/monitor/cloudmessage/config/SDKIDynamicParams;->getDid()Ljava/lang/String;

    move-result-object v1

    .line 3034
    iput-object v1, v0, Lgbsdk/common/host/abgu;->a:Ljava/lang/String;

    .line 1265
    invoke-static {}, Lcom/bytedance/apm/common/utility/ToolUtils;->getCurrentProcessName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    const-string v2, ":"

    .line 1266
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    goto :goto_4

    :cond_6
    const-string v1, "main"

    .line 3050
    :goto_4
    iput-object v1, v0, Lgbsdk/common/host/abgu;->c:Ljava/lang/String;

    .line 3058
    iput-object v8, v0, Lgbsdk/common/host/abgu;->d:Ljava/util/List;

    .line 1269
    new-instance v1, Lorg/json/JSONObject;

    invoke-static {v5}, Lgbsdk/common/host/abut;->cK(Ljava/lang/String;)Lgbsdk/common/host/abut;

    move-result-object v2

    invoke-virtual {v2}, Lgbsdk/common/host/abut;->a()Ljava/util/Map;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 3066
    iput-object v1, v0, Lgbsdk/common/host/abgu;->e:Lorg/json/JSONObject;

    .line 4038
    iget-object v1, v0, Lgbsdk/common/host/abgu;->b:Ljava/lang/String;

    .line 3281
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 5030
    iget-object v1, v0, Lgbsdk/common/host/abgu;->a:Ljava/lang/String;

    .line 3281
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 5046
    iget-object v1, v0, Lgbsdk/common/host/abgu;->c:Ljava/lang/String;

    .line 3282
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 5054
    iget-object v1, v0, Lgbsdk/common/host/abgu;->d:Ljava/util/List;

    if-eqz v1, :cond_8

    .line 6054
    iget-object v1, v0, Lgbsdk/common/host/abgu;->d:Ljava/util/List;

    .line 3283
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_7

    goto :goto_5

    :cond_7
    const/4 v1, 0x1

    goto :goto_6

    :cond_8
    :goto_5
    const/4 v1, 0x0

    :goto_6
    if-nez v1, :cond_b

    if-eqz v4, :cond_a

    .line 1083
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 1085
    :try_start_1
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "aid"

    .line 7038
    iget-object v4, v0, Lgbsdk/common/host/abgu;->b:Ljava/lang/String;

    .line 1086
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "did"

    .line 8030
    iget-object v4, v0, Lgbsdk/common/host/abgu;->a:Ljava/lang/String;

    .line 1087
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "processName"

    .line 8046
    iget-object v4, v0, Lgbsdk/common/host/abgu;->c:Ljava/lang/String;

    .line 1088
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "alogSize"

    .line 8054
    iget-object v4, v0, Lgbsdk/common/host/abgu;->d:Ljava/util/List;

    if-eqz v4, :cond_9

    .line 9054
    iget-object v0, v0, Lgbsdk/common/host/abgu;->d:Ljava/util/List;

    .line 1089
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_7

    :cond_9
    const-string v0, "null"

    :goto_7
    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1090
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v11, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_8

    :catch_0
    move-exception v0

    .line 1092
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_8
    const/4 v0, 0x5

    .line 1094
    invoke-static {v7, v0, v6, v1}, Lgbsdk/common/host/abgo;->b(ZILjava/lang/Exception;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    :cond_a
    const-string v0, "upload param missed"

    .line 10051
    invoke-static {v0}, Lgbsdk/common/host/abgo;->a(Ljava/lang/String;)V

    return-void

    :cond_b
    const-string v1, "alog file begin zip"

    .line 11051
    invoke-static {v1}, Lgbsdk/common/host/abgo;->a(Ljava/lang/String;)V

    .line 11054
    iget-object v1, v0, Lgbsdk/common/host/abgu;->d:Ljava/util/List;

    .line 1103
    invoke-static {v1}, Lgbsdk/common/host/abgr;->d(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "alog file end zip"

    .line 12051
    invoke-static {v2}, Lgbsdk/common/host/abgo;->a(Ljava/lang/String;)V

    new-array v2, v9, [I

    aput v7, v2, v7

    .line 1106
    new-instance v3, Lgbsdk/common/host/abgr$2;

    invoke-direct {v3, v2, v4}, Lgbsdk/common/host/abgr$2;-><init>([ILgbsdk/common/host/abgn;)V

    .line 1122
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_d

    const-string v1, "alog file upload origin file begin"

    .line 13051
    invoke-static {v1}, Lgbsdk/common/host/abgo;->a(Ljava/lang/String;)V

    .line 14038
    iget-object v8, v0, Lgbsdk/common/host/abgu;->b:Ljava/lang/String;

    .line 15030
    iget-object v9, v0, Lgbsdk/common/host/abgu;->a:Ljava/lang/String;

    .line 15046
    iget-object v10, v0, Lgbsdk/common/host/abgu;->c:Ljava/lang/String;

    .line 15054
    iget-object v11, v0, Lgbsdk/common/host/abgu;->d:Ljava/util/List;

    .line 15062
    iget-object v12, v0, Lgbsdk/common/host/abgu;->e:Lorg/json/JSONObject;

    move-object v13, v3

    .line 1125
    invoke-static/range {v8 .. v13}, Lgbsdk/common/host/abgt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lorg/json/JSONObject;Lgbsdk/common/host/abgt$ab;)Z

    move-result v1

    if-nez v1, :cond_c

    .line 16038
    iget-object v8, v0, Lgbsdk/common/host/abgu;->b:Ljava/lang/String;

    .line 17030
    iget-object v9, v0, Lgbsdk/common/host/abgu;->a:Ljava/lang/String;

    .line 17046
    iget-object v10, v0, Lgbsdk/common/host/abgu;->c:Ljava/lang/String;

    .line 17054
    iget-object v11, v0, Lgbsdk/common/host/abgu;->d:Ljava/util/List;

    .line 17062
    iget-object v12, v0, Lgbsdk/common/host/abgu;->e:Lorg/json/JSONObject;

    move-object v13, v3

    .line 1128
    invoke-static/range {v8 .. v13}, Lgbsdk/common/host/abgt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lorg/json/JSONObject;Lgbsdk/common/host/abgt$ab;)Z

    move-result v1

    .line 1131
    :cond_c
    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "alog file upload origin file end. success :"

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 18051
    invoke-static {v0}, Lgbsdk/common/host/abgo;->a(Ljava/lang/String;)V

    return-void

    .line 1134
    :cond_d
    :try_start_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1135
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v4, "alog file upload zip file begin"

    .line 19051
    invoke-static {v4}, Lgbsdk/common/host/abgo;->a(Ljava/lang/String;)V

    .line 20038
    iget-object v8, v0, Lgbsdk/common/host/abgu;->b:Ljava/lang/String;

    .line 21030
    iget-object v9, v0, Lgbsdk/common/host/abgu;->a:Ljava/lang/String;

    .line 21046
    iget-object v10, v0, Lgbsdk/common/host/abgu;->c:Ljava/lang/String;

    .line 21062
    iget-object v12, v0, Lgbsdk/common/host/abgu;->e:Lorg/json/JSONObject;

    move-object v11, v2

    move-object v13, v3

    .line 1138
    invoke-static/range {v8 .. v13}, Lgbsdk/common/host/abgt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lorg/json/JSONObject;Lgbsdk/common/host/abgt$ab;)Z

    move-result v7

    if-nez v7, :cond_e

    .line 22038
    iget-object v8, v0, Lgbsdk/common/host/abgu;->b:Ljava/lang/String;

    .line 23030
    iget-object v9, v0, Lgbsdk/common/host/abgu;->a:Ljava/lang/String;

    .line 23046
    iget-object v10, v0, Lgbsdk/common/host/abgu;->c:Ljava/lang/String;

    .line 23062
    iget-object v12, v0, Lgbsdk/common/host/abgu;->e:Lorg/json/JSONObject;

    move-object v11, v2

    move-object v13, v3

    .line 1141
    invoke-static/range {v8 .. v13}, Lgbsdk/common/host/abgt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lorg/json/JSONObject;Lgbsdk/common/host/abgt$ab;)Z

    move-result v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1146
    :catchall_1
    :cond_e
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "alog file upload zip file end. success:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " zip file:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 24051
    invoke-static {v0}, Lgbsdk/common/host/abgo;->a(Ljava/lang/String;)V

    .line 1148
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1149
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    return-void

    :cond_f
    const-string v4, "alog upload file failed,local file is null"

    .line 1154
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 1156
    :try_start_3
    invoke-virtual {v5, v11, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v8, "e_start_time"

    .line 1157
    invoke-virtual {v5, v8, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v0, "e_end_time"

    .line 1158
    invoke-virtual {v5, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const/4 v0, 0x4

    .line 1159
    invoke-static {v7, v0, v6, v5}, Lgbsdk/common/host/abgo;->b(ZILjava/lang/Exception;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    .line 25051
    invoke-static {v4}, Lgbsdk/common/host/abgo;->a(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :catch_1
    return-void
.end method
