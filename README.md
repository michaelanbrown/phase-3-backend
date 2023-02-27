# Michaela's Property Management System

## Models

I have incldued three models:
1. Property
2. Record
3. Type

### Property

The Property model belongs_to :type and has_many :records.

### Record

The Record model belongs_to :property.

### Type

The Type model has_many :properties.

## Schemas

### Property



### Record



### Type



## Description



Button to display the form:
```bash
<button onClick={handleWantClick}>{wantValue}</button>
```

Form to submit new data about:
```bash
<form onSubmit={handleFutureSubmit}>
```

Delete button:
```bash
<button onClick={handleFutureDelete} className="delete">🗑️</button>
```

Complete button:
```bash
<button onClick={handleCompleteDelete} className="complete">Complete 🗸</button>
```

State filter:
```bash
<div id="filterstate">Filter by State:{' '}
    <select name="type" onChange={handleStateFilter}>
            <option value="" defaultValue={''}></option>
            {optionList}
    </select>
</div>
```

## Form Example

```python
# Form HTML

            <form onSubmit={handleFutureSubmit}>
                Enter New Travel Plans Here:
                <br></br>
                <input type="text" id="city" value={formData.city} onChange={handleFutureChange} placeholder="City/Activity"/>
                <br></br>
                <input type="text" id="state" value={formData.state} onChange={handleFutureChange} placeholder="State"/>
                <br></br>
                <input type="text" id="date" value={formData.date} onChange={handleFutureChange} placeholder="Date"/>
                <br></br>
                <input type="text" id="reason" value={formData.reason} onChange={handleFutureChange} placeholder="Reason for the trip"/>
                <br></br>
                <input type="text" id="photo" value={formData.photo} onChange={handleFutureChange} placeholder="Image URL"/>
                <br></br>
                <button>Submit</button>
            </form>
```

## Fork and Clone


## Contributing

Suggestions are welcome.