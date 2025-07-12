@GetMapping("/dashboard")
public String showDashboard(Model model) {
    List<Employee> employeeList = employeeService.getMockData();
    model.addAttribute("employees", employeeList);
    return "employee-dashboard"; // .ftl template
}
