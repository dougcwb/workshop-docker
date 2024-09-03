import streamlit as st

def hello():
    return "Hello caraaaaaa!!!"

def main():
    st.write(hello())

if __name__ == "__main__":
    main()

# poetry run streamlit run app.py