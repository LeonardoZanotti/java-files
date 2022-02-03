## Generating reports with JUnit

First things first, get the `junitpdfreport_essentials_1_0.zip` file from [here](https://sourceforge.net/projects/junitpdfreport/files/junitpdfreport/JUNITPDFREPORT_1_0/). Then, extract it somewhere in your computer and save the path to the folder.

Inside your project folder, go to the file `nbproject/build-impl.xml`.   

Inside and directly below `<project>` paste the following:
```
<import file="/path/to/junitpdfreport_essentials_1_0/build-junitpdfreport.xml"/>
```
Then, find the `<target>` tag with `name="-init-macrodef-junit-prototype-with-module"` and inside `<sequential>`, below `<junit>` paste the following:
```
<!-- PDF report -->
<junitpdfreport todir="${test.src.dir}" styledir="default">
	<fileset dir="${build.test.results.dir}"> 
	<include name="TEST-*.xml"/> 
	</fileset> 
</junitpdfreport>

<!-- HTML report -->
<junitreport todir="${test.src.dir}">
	<fileset dir="${build.test.results.dir}">
		<include name="TEST-*.xml"/>
	</fileset>
	<report todir="${test.src.dir}/html"/>
</junitreport>
```

Now, when you run the tests in your project, it will generate HTML and PDF reports inside the `test` folder.

## References

[Advanced WebDriver – Generating a PDF report](https://javabeginnerstutorial.com/selenium/10e-advanced-webdriver-generating-pdf-report/)

[Testes de unidade com JUnit](https://www.devmedia.com.br/testes-de-unidade-com-junit/4637)

[Testes Unitários com JUnit](https://docente.ifrn.edu.br/nickersonferreira/disciplinas/projeto-de-desenvolvimento-de-software/tutorial-junit)