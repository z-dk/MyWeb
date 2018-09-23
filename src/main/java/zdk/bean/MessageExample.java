package zdk.bean;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class MessageExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public MessageExample() {
        oredCriteria = new ArrayList<Criteria>();
    }

    public void setOrderByClause(String orderByClause) {
        this.orderByClause = orderByClause;
    }

    public String getOrderByClause() {
        return orderByClause;
    }

    public void setDistinct(boolean distinct) {
        this.distinct = distinct;
    }

    public boolean isDistinct() {
        return distinct;
    }

    public List<Criteria> getOredCriteria() {
        return oredCriteria;
    }

    public void or(Criteria criteria) {
        oredCriteria.add(criteria);
    }

    public Criteria or() {
        Criteria criteria = createCriteriaInternal();
        oredCriteria.add(criteria);
        return criteria;
    }

    public Criteria createCriteria() {
        Criteria criteria = createCriteriaInternal();
        if (oredCriteria.size() == 0) {
            oredCriteria.add(criteria);
        }
        return criteria;
    }

    protected Criteria createCriteriaInternal() {
        Criteria criteria = new Criteria();
        return criteria;
    }

    public void clear() {
        oredCriteria.clear();
        orderByClause = null;
        distinct = false;
    }

    protected abstract static class GeneratedCriteria {
        protected List<Criterion> criteria;

        protected GeneratedCriteria() {
            super();
            criteria = new ArrayList<Criterion>();
        }

        public boolean isValid() {
            return criteria.size() > 0;
        }

        public List<Criterion> getAllCriteria() {
            return criteria;
        }

        public List<Criterion> getCriteria() {
            return criteria;
        }

        protected void addCriterion(String condition) {
            if (condition == null) {
                throw new RuntimeException("Value for condition cannot be null");
            }
            criteria.add(new Criterion(condition));
        }

        protected void addCriterion(String condition, Object value, String property) {
            if (value == null) {
                throw new RuntimeException("Value for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value));
        }

        protected void addCriterion(String condition, Object value1, Object value2, String property) {
            if (value1 == null || value2 == null) {
                throw new RuntimeException("Between values for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value1, value2));
        }

        public Criteria andMIdIsNull() {
            addCriterion("m_id is null");
            return (Criteria) this;
        }

        public Criteria andMIdIsNotNull() {
            addCriterion("m_id is not null");
            return (Criteria) this;
        }

        public Criteria andMIdEqualTo(Integer value) {
            addCriterion("m_id =", value, "mId");
            return (Criteria) this;
        }

        public Criteria andMIdNotEqualTo(Integer value) {
            addCriterion("m_id <>", value, "mId");
            return (Criteria) this;
        }

        public Criteria andMIdGreaterThan(Integer value) {
            addCriterion("m_id >", value, "mId");
            return (Criteria) this;
        }

        public Criteria andMIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("m_id >=", value, "mId");
            return (Criteria) this;
        }

        public Criteria andMIdLessThan(Integer value) {
            addCriterion("m_id <", value, "mId");
            return (Criteria) this;
        }

        public Criteria andMIdLessThanOrEqualTo(Integer value) {
            addCriterion("m_id <=", value, "mId");
            return (Criteria) this;
        }

        public Criteria andMIdIn(List<Integer> values) {
            addCriterion("m_id in", values, "mId");
            return (Criteria) this;
        }

        public Criteria andMIdNotIn(List<Integer> values) {
            addCriterion("m_id not in", values, "mId");
            return (Criteria) this;
        }

        public Criteria andMIdBetween(Integer value1, Integer value2) {
            addCriterion("m_id between", value1, value2, "mId");
            return (Criteria) this;
        }

        public Criteria andMIdNotBetween(Integer value1, Integer value2) {
            addCriterion("m_id not between", value1, value2, "mId");
            return (Criteria) this;
        }

        public Criteria andVisitorIsNull() {
            addCriterion("visitor is null");
            return (Criteria) this;
        }

        public Criteria andVisitorIsNotNull() {
            addCriterion("visitor is not null");
            return (Criteria) this;
        }

        public Criteria andVisitorEqualTo(String value) {
            addCriterion("visitor =", value, "visitor");
            return (Criteria) this;
        }

        public Criteria andVisitorNotEqualTo(String value) {
            addCriterion("visitor <>", value, "visitor");
            return (Criteria) this;
        }

        public Criteria andVisitorGreaterThan(String value) {
            addCriterion("visitor >", value, "visitor");
            return (Criteria) this;
        }

        public Criteria andVisitorGreaterThanOrEqualTo(String value) {
            addCriterion("visitor >=", value, "visitor");
            return (Criteria) this;
        }

        public Criteria andVisitorLessThan(String value) {
            addCriterion("visitor <", value, "visitor");
            return (Criteria) this;
        }

        public Criteria andVisitorLessThanOrEqualTo(String value) {
            addCriterion("visitor <=", value, "visitor");
            return (Criteria) this;
        }

        public Criteria andVisitorLike(String value) {
            addCriterion("visitor like", value, "visitor");
            return (Criteria) this;
        }

        public Criteria andVisitorNotLike(String value) {
            addCriterion("visitor not like", value, "visitor");
            return (Criteria) this;
        }

        public Criteria andVisitorIn(List<String> values) {
            addCriterion("visitor in", values, "visitor");
            return (Criteria) this;
        }

        public Criteria andVisitorNotIn(List<String> values) {
            addCriterion("visitor not in", values, "visitor");
            return (Criteria) this;
        }

        public Criteria andVisitorBetween(String value1, String value2) {
            addCriterion("visitor between", value1, value2, "visitor");
            return (Criteria) this;
        }

        public Criteria andVisitorNotBetween(String value1, String value2) {
            addCriterion("visitor not between", value1, value2, "visitor");
            return (Criteria) this;
        }

        public Criteria andMInfoIsNull() {
            addCriterion("m_info is null");
            return (Criteria) this;
        }

        public Criteria andMInfoIsNotNull() {
            addCriterion("m_info is not null");
            return (Criteria) this;
        }

        public Criteria andMInfoEqualTo(String value) {
            addCriterion("m_info =", value, "mInfo");
            return (Criteria) this;
        }

        public Criteria andMInfoNotEqualTo(String value) {
            addCriterion("m_info <>", value, "mInfo");
            return (Criteria) this;
        }

        public Criteria andMInfoGreaterThan(String value) {
            addCriterion("m_info >", value, "mInfo");
            return (Criteria) this;
        }

        public Criteria andMInfoGreaterThanOrEqualTo(String value) {
            addCriterion("m_info >=", value, "mInfo");
            return (Criteria) this;
        }

        public Criteria andMInfoLessThan(String value) {
            addCriterion("m_info <", value, "mInfo");
            return (Criteria) this;
        }

        public Criteria andMInfoLessThanOrEqualTo(String value) {
            addCriterion("m_info <=", value, "mInfo");
            return (Criteria) this;
        }

        public Criteria andMInfoLike(String value) {
            addCriterion("m_info like", value, "mInfo");
            return (Criteria) this;
        }

        public Criteria andMInfoNotLike(String value) {
            addCriterion("m_info not like", value, "mInfo");
            return (Criteria) this;
        }

        public Criteria andMInfoIn(List<String> values) {
            addCriterion("m_info in", values, "mInfo");
            return (Criteria) this;
        }

        public Criteria andMInfoNotIn(List<String> values) {
            addCriterion("m_info not in", values, "mInfo");
            return (Criteria) this;
        }

        public Criteria andMInfoBetween(String value1, String value2) {
            addCriterion("m_info between", value1, value2, "mInfo");
            return (Criteria) this;
        }

        public Criteria andMInfoNotBetween(String value1, String value2) {
            addCriterion("m_info not between", value1, value2, "mInfo");
            return (Criteria) this;
        }

        public Criteria andStatusIsNull() {
            addCriterion("status is null");
            return (Criteria) this;
        }

        public Criteria andStatusIsNotNull() {
            addCriterion("status is not null");
            return (Criteria) this;
        }

        public Criteria andStatusEqualTo(Boolean value) {
            addCriterion("status =", value, "status");
            return (Criteria) this;
        }

        public Criteria andStatusNotEqualTo(Boolean value) {
            addCriterion("status <>", value, "status");
            return (Criteria) this;
        }

        public Criteria andStatusGreaterThan(Boolean value) {
            addCriterion("status >", value, "status");
            return (Criteria) this;
        }

        public Criteria andStatusGreaterThanOrEqualTo(Boolean value) {
            addCriterion("status >=", value, "status");
            return (Criteria) this;
        }

        public Criteria andStatusLessThan(Boolean value) {
            addCriterion("status <", value, "status");
            return (Criteria) this;
        }

        public Criteria andStatusLessThanOrEqualTo(Boolean value) {
            addCriterion("status <=", value, "status");
            return (Criteria) this;
        }

        public Criteria andStatusIn(List<Boolean> values) {
            addCriterion("status in", values, "status");
            return (Criteria) this;
        }

        public Criteria andStatusNotIn(List<Boolean> values) {
            addCriterion("status not in", values, "status");
            return (Criteria) this;
        }

        public Criteria andStatusBetween(Boolean value1, Boolean value2) {
            addCriterion("status between", value1, value2, "status");
            return (Criteria) this;
        }

        public Criteria andStatusNotBetween(Boolean value1, Boolean value2) {
            addCriterion("status not between", value1, value2, "status");
            return (Criteria) this;
        }

        public Criteria andDateTimeIsNull() {
            addCriterion("date_time is null");
            return (Criteria) this;
        }

        public Criteria andDateTimeIsNotNull() {
            addCriterion("date_time is not null");
            return (Criteria) this;
        }

        public Criteria andDateTimeEqualTo(Date value) {
            addCriterion("date_time =", value, "dateTime");
            return (Criteria) this;
        }

        public Criteria andDateTimeNotEqualTo(Date value) {
            addCriterion("date_time <>", value, "dateTime");
            return (Criteria) this;
        }

        public Criteria andDateTimeGreaterThan(Date value) {
            addCriterion("date_time >", value, "dateTime");
            return (Criteria) this;
        }

        public Criteria andDateTimeGreaterThanOrEqualTo(Date value) {
            addCriterion("date_time >=", value, "dateTime");
            return (Criteria) this;
        }

        public Criteria andDateTimeLessThan(Date value) {
            addCriterion("date_time <", value, "dateTime");
            return (Criteria) this;
        }

        public Criteria andDateTimeLessThanOrEqualTo(Date value) {
            addCriterion("date_time <=", value, "dateTime");
            return (Criteria) this;
        }

        public Criteria andDateTimeIn(List<Date> values) {
            addCriterion("date_time in", values, "dateTime");
            return (Criteria) this;
        }

        public Criteria andDateTimeNotIn(List<Date> values) {
            addCriterion("date_time not in", values, "dateTime");
            return (Criteria) this;
        }

        public Criteria andDateTimeBetween(Date value1, Date value2) {
            addCriterion("date_time between", value1, value2, "dateTime");
            return (Criteria) this;
        }

        public Criteria andDateTimeNotBetween(Date value1, Date value2) {
            addCriterion("date_time not between", value1, value2, "dateTime");
            return (Criteria) this;
        }
    }

    public static class Criteria extends GeneratedCriteria {

        protected Criteria() {
            super();
        }
    }

    public static class Criterion {
        private String condition;

        private Object value;

        private Object secondValue;

        private boolean noValue;

        private boolean singleValue;

        private boolean betweenValue;

        private boolean listValue;

        private String typeHandler;

        public String getCondition() {
            return condition;
        }

        public Object getValue() {
            return value;
        }

        public Object getSecondValue() {
            return secondValue;
        }

        public boolean isNoValue() {
            return noValue;
        }

        public boolean isSingleValue() {
            return singleValue;
        }

        public boolean isBetweenValue() {
            return betweenValue;
        }

        public boolean isListValue() {
            return listValue;
        }

        public String getTypeHandler() {
            return typeHandler;
        }

        protected Criterion(String condition) {
            super();
            this.condition = condition;
            this.typeHandler = null;
            this.noValue = true;
        }

        protected Criterion(String condition, Object value, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.typeHandler = typeHandler;
            if (value instanceof List<?>) {
                this.listValue = true;
            } else {
                this.singleValue = true;
            }
        }

        protected Criterion(String condition, Object value) {
            this(condition, value, null);
        }

        protected Criterion(String condition, Object value, Object secondValue, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.secondValue = secondValue;
            this.typeHandler = typeHandler;
            this.betweenValue = true;
        }

        protected Criterion(String condition, Object value, Object secondValue) {
            this(condition, value, secondValue, null);
        }
    }
}