.class public Lcom/talkweb/twOfflineSdk/paycfg/PayConfigUtil;
.super Ljava/lang/Object;
.source "PayConfigUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/talkweb/twOfflineSdk/paycfg/PayConfigUtil$ChannelType;
    }
.end annotation


# static fields
.field public static OPERATOR_CARRIER:Ljava/lang/String; = "00"

.field public static OPERATOR_THIRD:Ljava/lang/String; = "99"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addPayWayToGood(Lcom/talkweb/twOfflineSdk/bean/Goods;Lcom/talkweb/twOfflineSdk/bean/PayWay;Lcom/talkweb/twOfflineSdk/bean/PayConfig;)V
    .locals 3

    .line 218
    invoke-virtual {p1}, Lcom/talkweb/twOfflineSdk/bean/PayWay;->getOperators()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/talkweb/twOfflineSdk/paycfg/PayConfigUtil;->OPERATOR_THIRD:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 219
    invoke-virtual {p0}, Lcom/talkweb/twOfflineSdk/bean/Goods;->getPayWayList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 223
    :cond_0
    invoke-static {}, Lcom/talkweb/twOfflineSdk/paycfg/TalkwebPayConfig;->getGameContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "twOfflinePay.xml"

    const-string v2, "noFeeCode"

    .line 222
    invoke-static {v0, v1, v2}, Lcom/talkweb/twOfflineSdk/tools/Tools;->getValueFromAssetsByParamName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    .line 224
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 227
    invoke-virtual {p0}, Lcom/talkweb/twOfflineSdk/bean/Goods;->getPayWayList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x0

    .line 230
    :goto_0
    invoke-virtual {p0}, Lcom/talkweb/twOfflineSdk/bean/Goods;->getPayWayList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 232
    invoke-virtual {p0}, Lcom/talkweb/twOfflineSdk/bean/Goods;->getPayWayList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/talkweb/twOfflineSdk/bean/PayWay;

    invoke-virtual {v1}, Lcom/talkweb/twOfflineSdk/bean/PayWay;->getOperators()Ljava/lang/String;

    move-result-object v1

    .line 233
    invoke-virtual {p1}, Lcom/talkweb/twOfflineSdk/bean/PayWay;->getOperators()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-void

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 245
    :cond_3
    invoke-virtual {p0}, Lcom/talkweb/twOfflineSdk/bean/Goods;->getPayWayList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 248
    invoke-virtual {p1}, Lcom/talkweb/twOfflineSdk/bean/PayWay;->getOperators()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lcom/talkweb/twOfflineSdk/paycfg/PayConfigUtil;->OPERATOR_THIRD:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    .line 249
    invoke-virtual {p2, p1}, Lcom/talkweb/twOfflineSdk/bean/PayConfig;->setCurCarrierPayWay(Lcom/talkweb/twOfflineSdk/bean/PayWay;)V

    :cond_4
    return-void
.end method

.method public static checkCarrierAndFeeCode(Lcom/talkweb/twOfflineSdk/bean/PayWay;Lcom/talkweb/twOfflineSdk/bean/Goods;Lcom/talkweb/twOfflineSdk/bean/PayConfig;)Z
    .locals 5

    .line 118
    invoke-static {}, Lcom/talkweb/twOfflineSdk/paycfg/TalkwebPayConfig;->getSimState()Lcom/talkweb/twOfflineSdk/bean/SimState;

    move-result-object v0

    const-string v1, "payConfig operator \u914d\u7f6e\u9519\u8bef"

    const/4 v2, 0x0

    if-eqz p2, :cond_8

    .line 119
    invoke-virtual {p2}, Lcom/talkweb/twOfflineSdk/bean/PayConfig;->getOperator()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    goto/16 :goto_1

    .line 123
    :cond_0
    invoke-virtual {p2}, Lcom/talkweb/twOfflineSdk/bean/PayConfig;->getOperator()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/talkweb/twOfflineSdk/paycfg/PayConfigUtil$ChannelType;->getEnum(Ljava/lang/String;)Lcom/talkweb/twOfflineSdk/paycfg/PayConfigUtil$ChannelType;

    move-result-object p2

    if-nez p2, :cond_1

    .line 125
    invoke-static {v1}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->w(Ljava/lang/String;)V

    return v2

    .line 130
    :cond_1
    invoke-static {}, Lcom/talkweb/twOfflineSdk/paycfg/TalkwebPayConfig;->getGameContext()Landroid/content/Context;

    move-result-object v1

    const-string v3, "twOfflinePay.xml"

    const-string v4, "noFeeCode"

    .line 129
    invoke-static {v1, v3, v4}, Lcom/talkweb/twOfflineSdk/tools/Tools;->getValueFromAssetsByParamName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "true"

    .line 131
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 133
    invoke-virtual {p0}, Lcom/talkweb/twOfflineSdk/bean/PayWay;->getFeeCode()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/talkweb/twutil/StringUtils;->isStrValid(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    if-nez v1, :cond_2

    return v2

    .line 136
    :cond_2
    sget-object v3, Lcom/talkweb/twOfflineSdk/paycfg/PayConfigUtil$1;->$SwitchMap$com$talkweb$twOfflineSdk$paycfg$PayConfigUtil$ChannelType:[I

    invoke-virtual {p2}, Lcom/talkweb/twOfflineSdk/paycfg/PayConfigUtil$ChannelType;->ordinal()I

    move-result p2

    aget p2, v3, p2

    const/4 v3, 0x1

    if-eq p2, v3, :cond_3

    return v3

    .line 144
    :cond_3
    invoke-virtual {p0}, Lcom/talkweb/twOfflineSdk/bean/PayWay;->getOperators()Ljava/lang/String;

    move-result-object p2

    sget-object v4, Lcom/talkweb/twOfflineSdk/paycfg/PayConfigUtil;->OPERATOR_THIRD:Ljava/lang/String;

    invoke-virtual {p2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 145
    invoke-virtual {p0}, Lcom/talkweb/twOfflineSdk/bean/PayWay;->getUsethirdpay()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/talkweb/twutil/StringUtils;->isStrValid(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_5

    const/4 p2, 0x0

    .line 149
    :try_start_0
    invoke-virtual {p0}, Lcom/talkweb/twOfflineSdk/bean/PayWay;->getUsethirdpay()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    :try_start_1
    invoke-virtual {p1}, Lcom/talkweb/twOfflineSdk/bean/Goods;->getPrice()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move p0, p2

    :catch_1
    const-string p1, "useThirdPayPrice\u4e0d\u6b63\u786e"

    .line 152
    invoke-static {p1}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->w(Ljava/lang/String;)V

    :goto_0
    cmpl-float p0, p2, p0

    if-ltz p0, :cond_4

    return v3

    :cond_4
    return v2

    .line 160
    :cond_5
    invoke-virtual {p0}, Lcom/talkweb/twOfflineSdk/bean/PayWay;->getNothirdpay()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Lcom/talkweb/twOfflineSdk/bean/Goods;->getGoodsId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_6

    return v3

    .line 165
    :cond_6
    invoke-virtual {p0}, Lcom/talkweb/twOfflineSdk/bean/PayWay;->getOperators()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0}, Lcom/talkweb/twOfflineSdk/bean/SimState;->getOperator()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_7

    if-nez v1, :cond_7

    :cond_7
    return v2

    .line 120
    :cond_8
    :goto_1
    invoke-static {v1}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->w(Ljava/lang/String;)V

    return v2
.end method

.method public static checkMcccProvince(Lcom/talkweb/twOfflineSdk/bean/PayWay;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public static checkPayConfig(Lcom/talkweb/twOfflineSdk/bean/PayConfig;)Z
    .locals 1

    .line 67
    invoke-virtual {p0}, Lcom/talkweb/twOfflineSdk/bean/PayConfig;->getApplicationId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/talkweb/twutil/StringUtils;->isStrValid(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    invoke-virtual {p0}, Lcom/talkweb/twOfflineSdk/bean/PayConfig;->getGoodsList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 69
    invoke-virtual {p0}, Lcom/talkweb/twOfflineSdk/bean/PayConfig;->getGoodsList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static parseAttribute(Lorg/dom4j/Attribute;Ljava/lang/Object;)V
    .locals 3

    .line 85
    invoke-interface {p0}, Lorg/dom4j/Attribute;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/talkweb/twOfflineSdk/tools/ObjectUtils;->getFiledByName(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 86
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 87
    invoke-interface {p0}, Lorg/dom4j/Attribute;->getValue()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p1, p0}, Lcom/talkweb/twOfflineSdk/tools/ObjectUtils;->setFieldValue(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public static parseElement(Lorg/dom4j/Element;Ljava/lang/Object;)V
    .locals 3

    const-string v0, "name"

    .line 103
    invoke-interface {p0, v0}, Lorg/dom4j/Element;->attributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 102
    invoke-static {p1, v0}, Lcom/talkweb/twOfflineSdk/tools/ObjectUtils;->getFiledByName(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 104
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "value"

    .line 106
    invoke-interface {p0, v1}, Lorg/dom4j/Element;->attributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 105
    invoke-static {v0, p1, p0}, Lcom/talkweb/twOfflineSdk/tools/ObjectUtils;->setFieldValue(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
